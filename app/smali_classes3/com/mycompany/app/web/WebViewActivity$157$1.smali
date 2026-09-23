.class Lcom/mycompany/app/web/WebViewActivity$157$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$157;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$157;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$157$1;->c:Lcom/mycompany/app/web/WebViewActivity$157;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$157$1;->c:Lcom/mycompany/app/web/WebViewActivity$157;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$157;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->yg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->zg:Lcom/mycompany/app/web/WebNestFrame;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->yg:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->zg:Lcom/mycompany/app/web/WebNestFrame;

    .line 13
    .line 14
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lcom/mycompany/app/web/WebViewActivity;->v8(I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ag:Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;

    .line 20
    .line 21
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Bg:Lcom/mycompany/app/web/WebNestFrame;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$158;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$158;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method
