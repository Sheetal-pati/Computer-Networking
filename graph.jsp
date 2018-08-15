<html>
    <head>
        <title>PingPoller</title>
        <script src= "https://cdn.zingchart.com/zingchart.min.js"></script>
            <script> zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
                    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];</script>
    </head>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .zc-ref {
            display: none;
        }
        body{

            background: url(datacenter.jpeg);
            background-size:cover;
            background-position:center;
        }
        div[id="script"]{
            top: 80px;
        }
    </style>
    <body>
        <div id='myChart'><a class="zc-ref" href="https://www.zingchart.com/">Charts by ZingChart</a></div>
        <div id="script">
            <script>
                zingchart.THEME="classic";
var myConfig = {
    "type": "bar",
    "background-color": "#000",
    "title": {
        "text": "UPTIME PERCENTAGE",
        "background-color": "#000",
        "color": "#ffffff"
    },
    "scroll-x": {
        "handle": {
            "background-color": "white",
            "border-left": "1px solid #a6a6a6",
            "border-right": "1px solid #a6a6a6",
            "border-top": "1px solid #a6a6a6",
            "border-bottom": "1px solid #a6a6a6",
            "border-radius": "5px"
        },
        "bar": {
            "background-color": "#a6a6a6",
            "alpha": 0.5,
            "border-radius": "5px"
        }
    },
    "scaleX": {
        "line-color": "#a6a6a6",
        "line-width": 0,
        "guide": {
            "line-color": "#a6a6a6",
            "line-style": "solid"
        },
        "tick": {
            "line-color": "#a6a6a6",
            "line-width": 1,
            "visible": 0
        },
        "item": {
            "color": "#a6a6a6"
        },
        "labels": [
            "Jan '14",
            "Feb '14",
            "Mar '14",
            "Apr '14",
            "May '14",
            "Jun '14",
            "Jul '14",
            "Aug '14",
            "Sep '14",
            "Oct '14",
            "Nov '14",
            "Dec '14"
        ],
        "zooming": true,
        "zoom-to": [
            0,
            3
        ]
    },
    "scaleY": {
        "line-color": "#a6a6a6",
        "line-width": 1,
        "guide": {
            "line-style": "solid",
            "line-color": "#a6a6a6"
        },
        "tick": {
            "line-color": "#a6a6a6",
            "line-width": 1
        },
        "item": {
            "color": "#a6a6a6"
        },
        "label": {
            "text": "Percentage",
            "color": "#a6a6a6"
        }
    },
    "tooltip": {
            "text":"isp %v%<br>in %kl",
            "text-align":"left",
            "shadow": 0,
            "border-radius": 5
        },
    "plot": {
        "alpha":0.6,
        "border-radius-top-right": 5,
        "border-radius-top-left": 5,
        "scroll-step-multiplier": 1,
        "animation":{
          "sequence":2 // takes zoomTo animation by default
        }
    },
    "series": [
        {
            "values": [
                42,
                43,
                30,
                40,
                32,
                37,
                30,
                29,
                35,
                41,
                39,
                40
            ],
            "background-color": "#f7846a"
        },
        {
            "values": [
                51,
                53,
                47,
                42,
                45,
                39,
                36,
                35,
                38,
                43,
                41,
                50
            ],
            "background-color": "#ffc94e"
        },
        {
            "values": [
                69,
                68,
                54,
                55,
                53,
                47,
                42,
                45,
                32,
                37,
                30,
                34
            ],
            "background-color": "#f1f14e"
        },
        {
            "values": [
                25,
                15,
                26,
                30,
                25,
                20,
                32,
                34,
                29,
                25,
                32,
                26
            ],
            "background-color": "#c9ea5d"
        },
        {
            "values": [
                52,
                46,
                35,
                26,
                41,
                31,
                43,
                47,
                38,
                40,
                33,
                29
            ],
            "background-color": "#92e4c9"
        },
        {
            "values": [
                37,
                48,
                31,
                34,
                30,
                32,
                41,
                37,
                51,
                50,
                32,
                52
            ],
            "background-color": "#85d6e4"
        }
    ]
};

zingchart.render({ 
	id : 'myChart', 
	data : myConfig
});
            </script>
        </div>
    </body>
</html>