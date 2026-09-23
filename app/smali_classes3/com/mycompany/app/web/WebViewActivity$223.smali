.class Lcom/mycompany/app/web/WebViewActivity$223;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$223;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$223;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Rh:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Rh:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->C8:Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 14
    .line 15
    invoke-virtual {v3, v1, v4}, Lcom/mycompany/app/web/WebNestView;->A(Ljava/lang/String;Lcom/mycompany/app/db/book/DbTabState$StateItem;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->C8:Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$224;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$224;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
