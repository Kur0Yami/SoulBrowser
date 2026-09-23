.class Lcom/mycompany/app/web/WebViewActivity$140;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$140;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$140;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Vf:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Vf:Lcom/mycompany/app/web/WebNestFrame;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, v2, Lcom/mycompany/app/view/MySnackbar$SnackItem;->f:Lcom/mycompany/app/web/WebNestFrame;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->U9(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->T4()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->d3:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    iget-object v4, v3, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    move v4, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean v4, v4, Lcom/mycompany/app/view/MyTabFrame;->J:Z

    .line 37
    .line 38
    xor-int/2addr v4, v5

    .line 39
    :goto_0
    if-eqz v4, :cond_2

    .line 40
    .line 41
    move v1, v5

    .line 42
    :goto_1
    move-object v4, v3

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_2
    new-instance v3, Lcom/mycompany/app/view/MySnackbar;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MySnackbar;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->l3:Lcom/mycompany/app/view/MySnackbar;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->g2:Lcom/google/android/material/appbar/AppBarLayout;

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MySnackbar;->setAppBarView(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 57
    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l3:Lcom/mycompany/app/view/MySnackbar;

    .line 62
    .line 63
    sget v3, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 64
    .line 65
    int-to-float v3, v3

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setElevation(F)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->l3:Lcom/mycompany/app/view/MySnackbar;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySnackbar;->setSnackItem(Lcom/mycompany/app/view/MySnackbar$SnackItem;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->l3:Lcom/mycompany/app/view/MySnackbar;

    .line 75
    .line 76
    sget v6, Lnet/kaki87/soul2/testing/R$string;->undelete:I

    .line 77
    .line 78
    new-instance v8, Lcom/mycompany/app/web/WebViewActivity$140$1;

    .line 79
    .line 80
    invoke-direct {v8, p0}, Lcom/mycompany/app/web/WebViewActivity$140$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$140;)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    iput v0, v3, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    invoke-virtual/range {v3 .. v8}, Lcom/mycompany/app/view/MySnackbar;->x(Landroid/view/ViewGroup;IIILcom/mycompany/app/view/MySnackbar$SnackbarListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
