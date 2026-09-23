.class Lcom/mycompany/app/web/WebVideoFull$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$6$1;->c:Lcom/mycompany/app/web/WebVideoFull$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$6$1;->c:Lcom/mycompany/app/web/WebVideoFull$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$6;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v4, v0, Lcom/mycompany/app/web/WebVideoFull;->u:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->t0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->V()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 25
    .line 26
    .line 27
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 33
    .line 34
    sget v3, Lnet/kaki87/soul2/testing/R$string;->rotation:I

    .line 35
    .line 36
    sget v6, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    move v6, v8

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v6, v2

    .line 44
    :goto_0
    invoke-direct {v1, v2, v3, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 51
    .line 52
    sget v3, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 53
    .line 54
    sget v6, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 55
    .line 56
    if-ne v6, v8, :cond_4

    .line 57
    .line 58
    move v6, v8

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    move v6, v2

    .line 61
    :goto_1
    invoke-direct {v1, v8, v3, v6}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 68
    .line 69
    sget v3, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 70
    .line 71
    sget v6, Lcom/mycompany/app/pref/PrefVideo;->o:I

    .line 72
    .line 73
    const/4 v7, 0x2

    .line 74
    if-ne v6, v7, :cond_5

    .line 75
    .line 76
    move v2, v8

    .line 77
    :cond_5
    invoke-direct {v1, v7, v3, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 84
    .line 85
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 86
    .line 87
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 88
    .line 89
    new-instance v7, Lcom/mycompany/app/web/WebVideoFull$57;

    .line 90
    .line 91
    invoke-direct {v7, v0}, Lcom/mycompany/app/web/WebVideoFull$57;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 92
    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->t0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 99
    .line 100
    iput-boolean v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->q:Z

    .line 101
    .line 102
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 107
    .line 108
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 109
    .line 110
    if-nez v1, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$58;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$58;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
