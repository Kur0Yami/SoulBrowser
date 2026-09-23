.class Lcom/mycompany/app/web/WebViewActivity$594;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$594;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$594;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "(function(){try{Object.defineProperty(document,'hidden',{configurable:true,get:function(){return false;}});Object.defineProperty(document,'visibilityState',{configurable:true,get:function(){return 'visible';}});}catch(e){}var ele=null;var eles=document.querySelectorAll('video,audio');if(eles&&eles.length>0){if(eles.length==1){ele=eles[0];}else{for(var i=0;i<eles.length;i++){if(!eles[i].paused&&eles[i].duration){ele=eles[i];break;}}if(!ele){ele=eles[0];}}}if(ele&&!ele.paused){android.onVideoAddListener(ele.src,false,true);function myVideoPlaying(evt){var src=null;var el=evt.target||evt.srcElement;if(el){src=el.src;}android.onVideoPaused(src,false);}function myVideoPaused(evt){var src=null;var el=evt.target||evt.srcElement;if(el){src=el.src;}android.onVideoPaused(src,true);}ele.addEventListener('playing',myVideoPlaying);ele.addEventListener('pause',myVideoPaused);}else{android.onVideoAddListener(null,false,false);}if(!window.sb_bp){window.sb_bp=1;document.addEventListener('visibilitychange',function(e){try{e.stopImmediatePropagation();}catch(x){}},true);}})();"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
