.class Lcom/mycompany/app/web/WebViewActivity$231;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$231;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$231;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ki:Z

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebTabBarAdapter;->C(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebTabBarAdapter;->x(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-nez v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Sh:Ljava/lang/String;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$232;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$232;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
