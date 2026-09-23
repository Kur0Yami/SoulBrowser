.class Lcom/mycompany/app/web/WebViewActivity$66;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$66;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$66;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e9:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x4d2

    .line 7
    .line 8
    if-eq v1, v3, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x3

    .line 23
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->f9:I

    .line 24
    .line 25
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->g9:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    iput v2, v0, Lcom/mycompany/app/web/WebViewActivity;->f9:I

    .line 29
    .line 30
    iput v3, v0, Lcom/mycompany/app/web/WebViewActivity;->g9:I

    .line 31
    .line 32
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$68;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$68;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v3, 0x64

    .line 43
    .line 44
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void

    .line 48
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->l4(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->p7(Landroid/graphics/Bitmap;Z)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$67;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$67;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
