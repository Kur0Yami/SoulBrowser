.class Lcom/mycompany/app/web/WebVkvLoad$4;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad$4;->c:Lcom/mycompany/app/web/WebVkvLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVkvLoad$4;->c:Lcom/mycompany/app/web/WebVkvLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVkvLoad;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebVkvLoad;->h:Z

    .line 10
    .line 11
    new-instance v2, Lcom/mycompany/app/web/WebVkvLoad$WebAppInterface;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVkvLoad$WebAppInterface;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "android"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
