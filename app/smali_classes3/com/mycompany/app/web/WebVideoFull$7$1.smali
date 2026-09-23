.class Lcom/mycompany/app/web/WebVideoFull$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$7$1;->c:Lcom/mycompany/app/web/WebVideoFull$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$7$1;->c:Lcom/mycompany/app/web/WebVideoFull$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$7;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v4, v0, Lcom/mycompany/app/web/WebVideoFull;->v:Lcom/mycompany/app/view/MyButtonImage;

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->I0:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 15
    .line 16
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_support_video:I

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->W()V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/mycompany/app/main/MainConst;->P:[I

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    move v3, v2

    .line 47
    :goto_0
    const/4 v8, 0x1

    .line 48
    if-ge v3, v1, :cond_5

    .line 49
    .line 50
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 51
    .line 52
    sget-object v7, Lcom/mycompany/app/main/MainConst;->P:[I

    .line 53
    .line 54
    aget v7, v7, v3

    .line 55
    .line 56
    sget v9, Lcom/mycompany/app/pref/PrefVideo;->w:I

    .line 57
    .line 58
    if-ne v3, v9, :cond_4

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move v8, v2

    .line 62
    :goto_1
    invoke-direct {v6, v3, v7, v8}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 74
    .line 75
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 76
    .line 77
    new-instance v7, Lcom/mycompany/app/web/WebVideoFull$59;

    .line 78
    .line 79
    invoke-direct {v7, v0}, Lcom/mycompany/app/web/WebVideoFull$59;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x1

    .line 83
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->u0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 87
    .line 88
    iput-boolean v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->q:Z

    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 95
    .line 96
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 97
    .line 98
    if-nez v1, :cond_7

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$60;

    .line 102
    .line 103
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$60;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    :goto_2
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
