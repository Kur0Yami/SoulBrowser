.class Lcom/mycompany/app/web/WebVkvLoad$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVkvLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVkvLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad$9;->c:Lcom/mycompany/app/web/WebVkvLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVkvLoad$9;->c:Lcom/mycompany/app/web/WebVkvLoad;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->i:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->i:Z

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 12
    .line 13
    const-string v2, "(function(){var data=null;var eles=document.querySelectorAll(\"script\");if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var val=eles[i].innerHTML;if(val&&val.startsWith(\'extend\')){data=val;break;}}}android.onVidData(data);})();"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
