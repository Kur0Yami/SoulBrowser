.class Lcom/mycompany/app/web/WebVideoPip$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$5;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$5;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->p:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_ok

    .line 10
    .line 11
    return-void

    .line 12
    :cond_ok
    # Third-party base avoids Error 152 (youtube embedding youtube).
    # contentDocument is cross-origin from this base, so ready-state uses the
    # YT IFrame API (onYouLoaded) instead of probing the embed's <video>.
    const-string v2, "https://localhost/"

    .line 13
    .line 14
    iput-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->x:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\"referrer\" content=\"strict-origin-when-cross-origin\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>html{background:#000}body{margin:0}iframe{display:block;width:100vw;height:100vh;border:0}</style></head><body><iframe id=\'ytplayer\' allow=\'autoplay; encrypted-media; picture-in-picture\' allowfullscreen referrerpolicy=\'strict-origin-when-cross-origin\' src=\'https://www.youtube.com/embed/"

    .line 17
    .line 18
    const-string v3, "?autoplay=1&controls=0&playsinline=1&enablejsapi=1&rel=0&origin=https://localhost\' frameborder=\'0\'></iframe><script>window.sbPlayer=null;window.sbPlayerReady=0;function sbPlay(){try{if(window.sbPlayer)window.sbPlayer.playVideo()}catch(e){}}function sbPause(){try{if(window.sbPlayer)window.sbPlayer.pauseVideo()}catch(e){}}function sbSeekBy(d){try{if(!window.sbPlayer)return;var t=window.sbPlayer.getCurrentTime()+d;var x=window.sbPlayer.getDuration();if(t<0)t=0;if(x>0&&t>x)t=x;window.sbPlayer.seekTo(t,true)}catch(e){}}function sbSeekTo(p){try{if(window.sbPlayer)window.sbPlayer.seekTo(p,true)}catch(e){}}function sbRate(r){try{if(window.sbPlayer)window.sbPlayer.setPlaybackRate(r)}catch(e){}}function sbLoop(l){try{if(window.sbPlayer)window.sbPlayer.setLoop(!!l)}catch(e){}}function onYouTubeIframeAPIReady(){window.sbPlayer=new YT.Player(\'ytplayer\',{events:{onReady:function(){window.sbPlayerReady=1;try{android.onYouLoaded(\'1\')}catch(e){}},onStateChange:function(e){try{if(e.data===1)android.onYouPaused(\'0\');else if(e.data===2||e.data===0)android.onYouPaused(\'1\')}catch(x){}}}})}</script><script src=\'https://www.youtube.com/iframe_api\'></script></body></html>"

    .line 19
    .line 20
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->y:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->f:Landroid/content/Context;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebVideoPip$5$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoPip$5$1;-><init>(Lcom/mycompany/app/web/WebVideoPip$5;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
