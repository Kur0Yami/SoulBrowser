.class Lcom/mycompany/app/web/WebViewActivity$182;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$182;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$182;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 4
    .line 5
    if-eqz v1, :cond_4

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->B7()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 v1, 0x4d2

    .line 21
    .line 22
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U3:I

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->O6()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    new-instance v1, Lcom/mycompany/app/view/MyIconView;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyIconView;->setDownIcon(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setDownNoti(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 52
    .line 53
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 59
    .line 60
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$182$1;

    .line 61
    .line 62
    invoke-direct {v3, p0}, Lcom/mycompany/app/web/WebViewActivity$182$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$182;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->A7(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->I9(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyBarView;->getCastView()Lcom/mycompany/app/wview/WebCastView;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 96
    .line 97
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->R3:Lcom/mycompany/app/view/MyIconView;

    .line 98
    .line 99
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 100
    .line 101
    const/4 v5, -0x1

    .line 102
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 103
    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->o2:Lcom/mycompany/app/view/MyBarView;

    .line 108
    .line 109
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
