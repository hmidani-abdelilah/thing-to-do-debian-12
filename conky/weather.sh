#!/bin/bash
# sudo apt install fonts-weather-icons jq
# sudo fc-cache -fv
CITY="Fes"
COUNTRY="MA"
UNITS="metric"
API_KEY="e27440052753656b42d142595d2fc267"

# جلب البيانات
WEATHER_DATA=$(curl -s "http://api.openweathermap.org/data/2.5/weather?q=${CITY},${COUNTRY}&units=${UNITS}&appid=${API_KEY}")

# التحقق من نجاح الاستجابة عبر حقل cod
COD=$(echo "$WEATHER_DATA" | jq -r '.cod')

if [ "$COD" = "200" ]; then
    TEMP=$(echo "$WEATHER_DATA" | jq '.main.temp' | awk '{print int($1+0.5)}')
    DESC=$(echo "$WEATHER_DATA" | jq -r '.weather[0].description')
    ICON_CODE=$(echo "$WEATHER_DATA" | jq -r '.weather[0].icon')
    HUMIDITY=$(echo "$WEATHER_DATA" | jq '.main.humidity')
    WIND_SPEED=$(echo "$WEATHER_DATA" | jq '.wind.speed' | awk '{print int($1+0.5)}')

    # تحويل كود الأيقونة إلى حرف لخط Weather Icons (تأكد من تثبيت الخط)
    case $ICON_CODE in
        01d) ICON="" ;; 01n) ICON="" ;;
        02d) ICON="" ;; 02n) ICON="" ;;
        03*) ICON="" ;; 04*) ICON="" ;;
        09*) ICON="" ;; 10d) ICON="" ;;
        10n) ICON="" ;; 11*) ICON="" ;;
        13*) ICON="" ;; 50*) ICON="" ;;
        *) ICON="" ;;
    esac

    # إخراج التنسيق مباشرة لـ Conky
    echo "\${font Weather Icons:size=20}\${color1}${ICON}\${font}\${voffset -15}\${goto 60}\${color}\${font :bold:size=12}${TEMP}°C\${font}"
    echo "\${goto 60}\${color5}${DESC}"
    echo "\${voffset 5}HUMIDITY: \${color1}${HUMIDITY}%\${color}  WIND SPEED: \${color1}${WIND_SPEED}m/s"
else
    echo "error to get data"
fi

