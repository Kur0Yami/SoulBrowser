.class Lcom/mycompany/app/web/WebViewActivity$640$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$640;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$640;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$640$1;->c:Lcom/mycompany/app/web/WebViewActivity$640;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$640$1;->c:Lcom/mycompany/app/web/WebViewActivity$640;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$640;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->M3()V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->W8:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->W8:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->C8:Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$222;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$222;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/web/WebNestView;->h(Ljava/lang/String;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->U8:Z

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Rh:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_4
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$223;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$223;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
