.class Lcom/mycompany/app/view/MySnackbar$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MySnackbar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MySnackbar$19;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MySnackbar$19;->c:Lcom/mycompany/app/view/MySnackbar;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 8
    .line 9
    if-eqz v2, :cond_6

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    :try_start_0
    iget v2, v0, Lcom/mycompany/app/view/MySnackbar;->i:I

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    const v2, 0x3f333333    # 0.7f

    .line 28
    .line 29
    .line 30
    :goto_0
    mul-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/high16 v2, 0x3f400000    # 0.75f

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 52
    .line 53
    instance-of v3, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 54
    .line 55
    const/16 v4, 0x51

    .line 56
    .line 57
    const/4 v5, -0x2

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    new-instance v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 61
    .line 62
    invoke-direct {v2, v1, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput v4, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->c:I

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->w:Z

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/behavior/MyBehaviorSnack;

    .line 76
    .line 77
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->g:Landroid/content/Context;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v1, v3, v4}, Lcom/mycompany/app/behavior/MyBehaviorSnack;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    .line 82
    .line 83
    iget v3, v0, Lcom/mycompany/app/view/MySnackbar;->q:I

    .line 84
    .line 85
    iput v3, v1, Lcom/mycompany/app/behavior/MyBehaviorSnack;->c:I

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->p:Lcom/google/android/material/appbar/AppBarLayout;

    .line 93
    .line 94
    iget v4, v0, Lcom/mycompany/app/view/MySnackbar;->q:I

    .line 95
    .line 96
    invoke-static {v3, v4}, Lcom/mycompany/app/behavior/MyBehaviorSnack;->y(Landroid/view/View;I)F

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 104
    .line 105
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    instance-of v3, v2, Landroid/widget/FrameLayout;

    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    .line 117
    invoke-direct {v2, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .line 119
    .line 120
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 123
    .line 124
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 125
    .line 126
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    instance-of v2, v2, Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    invoke-direct {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    .line 139
    const/16 v1, 0xe

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    .line 143
    .line 144
    const/16 v1, 0xc

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/view/MySnackbar;->s:Landroid/view/ViewGroup;

    .line 150
    .line 151
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar;->F:Landroid/widget/RelativeLayout;

    .line 152
    .line 153
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/view/MySnackbar;->t:Lcom/mycompany/app/view/MySnackSub;

    .line 157
    .line 158
    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MySnackSub;->setGuideMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    :catch_0
    :cond_6
    :goto_3
    return-void
.end method
