.class Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 19
    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    sget v1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-ne v1, v2, :cond_2

    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 34
    .line 35
    const/16 v2, 0x53

    .line 36
    .line 37
    move v4, v2

    .line 38
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x2

    .line 41
    if-ne v1, v2, :cond_3

    .line 42
    .line 43
    const/16 v2, 0x51

    .line 44
    .line 45
    move v4, v2

    .line 46
    move v1, v3

    .line 47
    move v2, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 v2, 0x3

    .line 50
    if-ne v1, v2, :cond_4

    .line 51
    .line 52
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 53
    .line 54
    const/16 v2, 0x55

    .line 55
    .line 56
    move v4, v2

    .line 57
    move v2, v1

    .line 58
    move v1, v3

    .line 59
    :goto_0
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 62
    .line 63
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .line 65
    .line 66
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 67
    .line 68
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 69
    .line 70
    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    .line 72
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 73
    .line 74
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 75
    .line 76
    :try_start_0
    new-instance v1, Lcom/mycompany/app/wview/WebUpView;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 79
    .line 80
    invoke-direct {v1, v2}, Lcom/mycompany/app/wview/WebUpView;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebUpView;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Lcom/mycompany/app/wview/WebUpView;->setBgColors(Z)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 96
    .line 97
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebVie2$12;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebVie2$12;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v3, v1, Lcom/mycompany/app/wview/WebUpView;->h:Z

    .line 103
    .line 104
    iput-object v2, v1, Lcom/mycompany/app/wview/WebUpView;->g:Lcom/mycompany/app/wview/WebUpView$UpViewListener;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :catch_0
    :cond_4
    :goto_1
    return-void
.end method
