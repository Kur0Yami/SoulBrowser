.class Lcom/mycompany/app/web/WebViewActivity$242;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$242;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$242;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->si:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ti:J

    .line 6
    .line 7
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ui:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->vi:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->wi:Landroid/graphics/Canvas;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->si:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    const-wide/16 v8, 0x0

    .line 17
    .line 18
    iput-wide v8, v0, Lcom/mycompany/app/web/WebViewActivity;->ti:J

    .line 19
    .line 20
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ui:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->vi:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->wi:Landroid/graphics/Canvas;

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-nez v7, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->v()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-boolean v7, v1, Lcom/mycompany/app/web/WebNestView;->a1:Z

    .line 46
    .line 47
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->C5(Z)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebNestView;->n1:Z

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    iput v7, v1, Lcom/mycompany/app/web/WebNestView;->D0:F

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    iput v7, v1, Lcom/mycompany/app/web/WebNestView;->J0:I

    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v1, v6}, Lcom/mycompany/app/web/WebNestView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    iput-wide v2, v0, Lcom/mycompany/app/web/WebViewActivity;->xi:J

    .line 63
    .line 64
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->yi:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->zi:Landroid/graphics/Bitmap;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$243;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$243;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
