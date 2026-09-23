.class Lcom/mycompany/app/web/WebViewActivity$190;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$190;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$190;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z3:Lcom/mycompany/app/view/MyIconView;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Y8()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 v1, 0x4d2

    .line 21
    .line 22
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->c4:I

    .line 23
    .line 24
    :try_start_0
    new-instance v1, Lcom/mycompany/app/view/MyIconView;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z3:Lcom/mycompany/app/view/MyIconView;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setYouIcon(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z3:Lcom/mycompany/app/view/MyIconView;

    .line 36
    .line 37
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Z3:Lcom/mycompany/app/view/MyIconView;

    .line 43
    .line 44
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$190$1;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$190$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$190;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->X8(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->W9(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyBarView;->getCastView()Lcom/mycompany/app/wview/WebCastView;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 80
    .line 81
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Z3:Lcom/mycompany/app/view/MyIconView;

    .line 82
    .line 83
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 84
    .line 85
    const/4 v5, -0x1

    .line 86
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 92
    .line 93
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 94
    .line 95
    invoke-virtual {v0, v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
