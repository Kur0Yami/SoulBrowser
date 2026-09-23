.class Lcom/mycompany/app/dialog/DialogViewSrc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$2;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$2;->c:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->H:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_1
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewSrc;->r()V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->V:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$3;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$4;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$4;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$5;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$5;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$6;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$6;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$7;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$7;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    sget v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 77
    .line 78
    if-ne v1, v3, :cond_2

    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    const/16 v2, 0xb

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 93
    .line 94
    .line 95
    const/16 v2, 0x9

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 106
    .line 107
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$8;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$8;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Landroid/view/GestureDetector;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->H:Landroid/content/Context;

    .line 118
    .line 119
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewSrc$9;

    .line 120
    .line 121
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$9;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->b0:Landroid/view/GestureDetector;

    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 130
    .line 131
    if-nez v1, :cond_3

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewSrc$10;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewSrc$10;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_0
    return-void
.end method
