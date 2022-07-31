<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>%LABEL%</title>
    <style>
        :root, *{ 
            --color-one: %CONSOLE_COLOR%;
            --color-log: #8200BA;
            --color-info: #525252;
            --color-notice: #005DBA;
            --color-warning: #918D01;
            --color-error: #BA002B;
            --color-success: #00BA60;
            --color-fore: #FFF;
            --color-back: #242424;
            font-family: sans-serif, arial;
        }
        html,body{ 
            height: 100%; 
            margin: 0;
            padding: 0;
            font-size: inherit;
        }

        body{
            color: var(--color-fore);
            background-color: var(--color-back);
        }
        
        .sheet, .container, .ui-badge{
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .sheet{
            width: 100vw;
            min-height: 100vh;
            align-items: center;
            display: flex;
            position: absolute;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            background-color: var(--color-back);
        }
        .container{
            max-width: 768px;
            align-items: flex-start;
            width: 100%;
            margin: 2rem 0;
        }
        .title{
            font-size: 14px;
            letter-spacing: .3rem;
            background-color: var(--color-one);
            color: #fff;
            padding: .5rem 1rem;
            border-radius: .5rem;
            letter-spacing: .1rem;
            line-height: 1.2rem;
            margin: 0 1rem 1rem;
            text-transform: uppercase;
        } 
        .content{
            font-size: medium;
            padding: 1rem 0;
            margin: 0 1rem;
        } 
        .powered{
            padding-top: 1rem;
            font-size: 10px;
            letter-spacing: .1rem;
            margin: 0 1rem;
        } 

        .ui-badge{
            padding: .3rem;
            background-color: var(--color-fore);
            color: var(--color-back);
            font-size: 9px;
            align-items: center;
            border-radius: 2rem;
            line-height: 12px;
        }

        .ui-badge.badge-log{
            color: #FFF;
            background-color: var(--color-log);
        }

        .ui-badge.badge-notice{
            color: #FFF;
            background-color: var(--color-notice);
        }

        .ui-badge.badge-warning{
            color: #FFF;
            background-color: var(--color-warning);
        }

        .ui-badge.badge-error{
            color: #FFF;
            background-color: var(--color-error);
        }

        .ui-badge.badge-success{
            color: #FFF;
            background-color: var(--color-success);
        }

        table thead tr th{
            padding: 1rem;
            text-align: left;
        }

        table tbody tr td{
            padding: .5rem 1rem;
            text-align: left;
        }
        
    </style>
</head>
<body>

    <div class="sheet">
            
        <div class="container">

            <div class="title">%LABEL%</div>

            <div class="content"> %CONTENT% </div>

            <div class="powered">%POWERED%</div>
            
        </div>

    </div>
    
</body>
</html>