.class Lcom/mycompany/app/web/WebVideoFull$77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$77;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$77;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-object v4, v0, Lcom/mycompany/app/web/WebVideoFull;->x:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebVideoFull;->f1:F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, v0, Lcom/mycompany/app/web/WebVideoFull;->f1:F

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->v0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->U()V

    .line 18
    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, v8}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 29
    .line 30
    .line 31
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    move v2, v8

    .line 37
    :goto_0
    sget-object v3, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    if-ge v2, v6, :cond_6

    .line 43
    .line 44
    aget v3, v3, v2

    .line 45
    .line 46
    const/4 v6, 0x3

    .line 47
    if-ne v2, v6, :cond_4

    .line 48
    .line 49
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 50
    .line 51
    sget v7, Lnet/kaki87/soul2/testing/R$string;->normal_rate:I

    .line 52
    .line 53
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v9, v8

    .line 61
    :goto_1
    invoke-direct {v6, v2, v7, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 69
    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v10, ""

    .line 73
    .line 74
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move v9, v8

    .line 92
    :goto_2
    invoke-direct {v6, v7, v2, v9}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iput v1, v0, Lcom/mycompany/app/web/WebVideoFull;->a1:F

    .line 102
    .line 103
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 104
    .line 105
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 106
    .line 107
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 108
    .line 109
    new-instance v7, Lcom/mycompany/app/web/WebVideoFull$61;

    .line 110
    .line 111
    invoke-direct {v7, v0}, Lcom/mycompany/app/web/WebVideoFull$61;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->v0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 119
    .line 120
    iput-boolean v9, v1, Lcom/mycompany/app/view/MyPopupMenu;->q:Z

    .line 121
    .line 122
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 123
    .line 124
    if-eqz v2, :cond_7

    .line 125
    .line 126
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 127
    .line 128
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 129
    .line 130
    if-nez v1, :cond_8

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebVideoFull$62;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoFull$62;-><init>(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    :goto_4
    iput-boolean v8, v0, Lcom/mycompany/app/web/WebVideoFull;->w0:Z

    .line 142
    .line 143
    return-void
.end method
