.class Lcom/mycompany/app/video/VideoActivity$65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/video/VideoActivity;->controlRate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$65;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/video/VideoActivity$65;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v3, v1, Lcom/mycompany/app/video/VideoActivity;->i4:Landroid/view/View;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->i4:Landroid/view/View;

    .line 7
    .line 8
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->f3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoActivity;->n1()V

    .line 14
    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->M1:Lcom/mycompany/app/video/VideoControl;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyFadeRelative;->setAutoHide(Z)V

    .line 25
    .line 26
    .line 27
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    move v0, v2

    .line 33
    :goto_1
    sget-object v5, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 34
    .line 35
    const/16 v6, 0x8

    .line 36
    .line 37
    if-ge v0, v6, :cond_6

    .line 38
    .line 39
    aget v5, v5, v0

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    const/4 v7, 0x1

    .line 43
    if-ne v0, v6, :cond_4

    .line 44
    .line 45
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 46
    .line 47
    sget v8, Lnet/kaki87/soul2/testing/R$string;->normal_rate:I

    .line 48
    .line 49
    iget v9, v1, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 50
    .line 51
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    move v7, v2

    .line 59
    :goto_2
    invoke-direct {v6, v0, v8, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIZ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    new-instance v6, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 67
    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v9, ""

    .line 71
    .line 72
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget v9, v1, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 83
    .line 84
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_5

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move v7, v2

    .line 92
    :goto_3
    invoke-direct {v6, v8, v0, v7}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(Ljava/lang/String;IZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 102
    .line 103
    iget-object v2, v1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 104
    .line 105
    new-instance v6, Lcom/mycompany/app/video/VideoActivity$66;

    .line 106
    .line 107
    invoke-direct {v6, v1}, Lcom/mycompany/app/video/VideoActivity$66;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 108
    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, v1, Lcom/mycompany/app/video/VideoActivity;->f3:Lcom/mycompany/app/view/MyPopupMenu;

    .line 115
    .line 116
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 117
    .line 118
    return-void
.end method
