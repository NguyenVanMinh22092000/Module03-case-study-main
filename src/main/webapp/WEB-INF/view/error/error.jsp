
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Sigmar+One')
        *
        *:before
        *:after
        box-sizing border-box

        body
        align-items center
        background-color rebeccapurple
        display flex
        flex-direction column
        font-family 'Sigmar One', cursive
                                  justify-content center
                                  margin 0
        padding 1rem
                 min-height 100vh
                               width 100vw

                                        .message
                                        text-align center
                                        margin 5rem auto 0 auto
                                                           color #fafafa

        @media(min-width 768px)
            max-width 30%

        $ear-color = #f981b3
        $body-color = #dd9b75
        $hat-color = #222
        $shoe-color = #4b68f4
        $nose-color = #ff7a1c
        $lip-color = #db2a06
        $arm-color = #fafafa

                     .mr
                     position relative
                     height 180px
                               width 120px

            @media(min-width 768px)
                height 250px
                          width 190px

                                   h1
                                   color #f8e809
                                   font-size 3rem
                                              position absolute
                                              top 0
                left 0
                margin 0
                z-index 5
                transform-origin left
                transform translate(-70%, 70%) rotate(-55deg)

                @media(min-width 768px)
                    font-size 5rem

  &__head
                               background $body-color
                               border-radius 50% 50% 50% 50% / 80% 80% 30% 30%
                    height 100%
                    width 100%
                    box-shadow inset 0 0 50px darken($body-color, 25%)

                &__hat
                 position absolute
                 top -10%
                    left 50%
                    transform translate(-75%, 0) rotate(-30deg)

                &__ear
                 position absolute

    &--left
                 right 98%
                    top 50%
                    transform rotate(-10deg)

                &--right
                 left 94%
                    transform rotate(165deg)
                    top 20%

                &__shoe
                 position absolute
                 top 95%

                &--left
                 left 10%

                &--right
                 right 10%

                &__nose
                 height 24%
                    width 20%
                    position absolute
                    top 50%
                    left 50%
                    transform translate(20%, -90%) rotate(-25deg)

                &:after
                &:before
                 background orange
                 box-shadow inset 0 0 20px darken($nose-color, 25%)
                    position absolute
                    content ''

                &:after
                 height 100%
                    width 100%
                    border-radius 50% 50% 50% 50% / 80% 80% 30% 30%

                &:before
                 height 50%
                    width 150%
                    bottom 0
                    left 50%
                    transform translate(-50%, 0)
                    border-radius 50% 50% 50% 50% / 90% 90% 40% 40%

                &__mouth
                 width 30%
                    height 5%
                    background $lip-color
                    position absolute
                    top 70%
                    border-radius 10px
                                    left 50%
                    transform translate(-10%, 0) rotate(20deg)

                &:after
                 content ''
                    height 25%
                    width 60%
                    background darken($lip-color, 10%)
                    position absolute
                    top 50%
                    right 20%
                    transform translate(0, -50%)

                &__eye
                 position absolute

    &--left
                 top 50%
                    left 15%
                    transform rotate(-90deg)

                &--right
                 top 50%
                    left 15%
                    transform translate(50%, -100%) rotate(10deg)

                &-brow
                 position absolute
                 height 4%
                    width 22%
                    background #111
                    border-radius 25%
                    top 50%

                &--right
                 left 15%
                    transform translate(50%, -650%) rotate(-10deg)

                &--left
                 left 15%
                    transform rotate(-90deg) translate(-50%, -350%) rotate(15deg)

                &__arm
                 position absolute

    &--right
                 top 65%
                    left 98%
                    transform rotate(10deg)

                &--left
                 top 35%
                    left 0
                    transform translate(-85%, 0) rotate(200deg)

                    .hat
                    width 60%
                    height 45%

                &__bowl
                 background $hat-color
                 border-radius 100%
                    clip-path inset( 0 0 50% 0)
                    height 100%
                    width 100%

                &__brim
                 border-radius 0 0 100% 100%
                    position absolute
                    bottom 40%
                    height 25%
                    width 110%
                    left 50%
                    background $hat-color
                    transform translate(-50%, 0)

                    .ear
                    height 30%
                    width 25%
                    background $ear-color
                    position absolute
                    border-radius 130% 60% 60% 130% / 100% 100% 100% 100%

                &:before
                 content ''
                    height 80%
                    width 80%
                    box-shadow inset 0 0 20px darken($ear-color, 30%)
                    position absolute
                    border-radius 130% 60% 60% 130% / 100% 100% 100% 100%
                    top 50%
                    left 50%
                    transform translate(-50%, -50%)

                &__inner
                 height 25%
                    width 30%
                    position absolute
                    top 50%
                    right 2px
                           background $ear-color
                           border-radius 100% 0 0 100%
                    transform translate(0, -50%)
                    box-shadow -5px 0 10px darken($ear-color, 30%)

                    .shoe
                    width 35%
                    height 35%

                &__body
                 background $shoe-color
                 border-radius 100%
                    clip-path inset( 0 0 50% 0)
                    height 100%
                    width 100%

                &__sole
                 border-radius 50% 50% 100% 100%
                    position absolute
                    bottom 40%
                    height 30%
                    width 104%
                    left 50%
                    background $shoe-color
                    transform translate(-50%, 0)

                    .eye
                    height 22%
                    width 20%
                    background white
                    border-radius 100%
                    overflow hidden

  &__lid
                    z-index 2
                    position absolute
                    background darken($body-color, 20%)
                    box-shadow inset 0 0 10px darken($body-color, 25%)

                &--lower
                 width 100%
                    height 100%
                    bottom 0
                    left 50%
                    transform translate3d(-50%, 85%, 0)
                    animation blink-lower 5s infinite linear

    &--upper
                                           top 0
                    width 100%
                    height 100%
                    transform translate3d(0, -80%, 0)
                    animation blink-upper 5s infinite linear

  &__pupil
                                           height 40%
                    width 38%
                    background black
                    border-radius 100%
                    position absolute
                    bottom 15%
                    left 50%
                    transform translate(-50%, 0)
                    z-index 1


                    .arm
                    height 4%
                    width 40%
                    background $arm-color

  &:before
                    content ''
                    position absolute
                    left 0
                    top 50%
                    height 200%
                    width 40%
                    background $arm-color
                    -webkit-clip-path polygon(50% 0, 0 100%, 100% 100%)
                    clip-path polygon(50% 0, 0 100%, 100% 100%)
                    transform translate(-15%, -50%) rotate(90deg)

                    .fist
                    position absolute
                    height 250%
                    width 30%
                    background $arm-color
                    position absolute
                    border-radius 10%
                    left 100%
                    top -80%

                &:after
                 content ''
                    background $arm-color
                    height 70%
                    width 30%
                    position absolute
                    top 90%
                    border-radius 10%

                    .hand
                    position absolute
                    left 90%
                    height 250%
                    width 30%
                    border-radius 100%
                    background $arm-color
                    top -50%

                    .finger
                    position absolute
                    height 25%
                    width 100%
                    background $arm-color
                    left 75%
                    top 50%
                    border-radius 50%

                &:nth-child(1)
                 top -15%
                    left 50%
                    transform rotate(-25deg)
                &:nth-child(2)
                 top 20%
                    transform rotate(-5deg)
                &:nth-child(3)
                 top 60%
                    transform rotate(-5deg)
                &:nth-child(4)
                 top 90%
                    left 50%
                    transform rotate(25deg)


                    @keyframes blink-lower
                0%, 45%, 50%, 100%
                    transform translate3d(-50%, 85%, 0)
                48%
                    transform translate3d(-50%, 70%, 0)

                    @keyframes blink-upper
                0%, 45%, 50%, 100%
                    transform translate3d(0%, -80%, 0)
                48%
                    transform translate3d(0%, -25%, 0)
    </style>
</head>
<body>
.mr
h1 500
.mr__head
.mr__hat.hat
.hat__bowl
.hat__brim
.mr__ear.mr__ear--left.ear
.ear__inner
.mr__ear.mr__ear--right.ear
.ear__inner
.mr__shoe.mr__shoe--left.shoe
.shoe__body
.shoe__sole
.mr__shoe.mr__shoe--right.shoe
.shoe__body
.shoe__sole
.mr__nose
.mr__mouth
.mr__eye.mr__eye--left.eye
.eye__pupil
.eye__lid.eye__lid--upper
.eye__lid.eye__lid--lower
.mr__eye.mr__eye--right.eye
.eye__pupil
.eye__lid.eye__lid--upper
.eye__lid.eye__lid--lower
.mr__eye-brow.mr__eye-brow--left
.mr__eye-brow.mr__eye-brow--right
.mr__arm.mr__arm--left.arm
.hand
.finger
.finger
.finger
.finger
.mr__arm.mr__arm--right.arm
.fist
h1.message Something isn't quite right.
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
</body>
</html>
