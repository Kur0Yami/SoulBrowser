.class Lcom/mycompany/app/web/WebViewActivity$444;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$444;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$444;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 9
    .line 10
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Vl:I

    .line 11
    .line 12
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Wl:I

    .line 13
    .line 14
    invoke-virtual {v1, v3, v4, v5}, Lcom/mycompany/app/wview/WebAreaMenu;->g(Landroid/view/View;II)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j7:Lcom/mycompany/app/wview/WebAreaMenu;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebAreaMenu;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ul:Z

    .line 23
    .line 24
    return-void
.end method
