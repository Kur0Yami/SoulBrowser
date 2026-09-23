.class Lcom/mycompany/app/dialog/DialogViewTrans$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$27;->f:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewTrans$27;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewTrans;->k1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$27;->f:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$27;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, ","

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aget-object v4, v1, v3

    .line 34
    .line 35
    const/high16 v5, -0x40800000    # -1.0f

    .line 36
    .line 37
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->F6(Ljava/lang/String;F)F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    aget-object v1, v1, v6

    .line 53
    .line 54
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->F6(Ljava/lang/String;F)F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v4, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v4, -0x1

    .line 67
    if-eq v2, v4, :cond_5

    .line 68
    .line 69
    if-ne v1, v4, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 82
    .line 83
    sub-int/2addr v4, v5

    .line 84
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 85
    .line 86
    sub-int v6, v4, v5

    .line 87
    .line 88
    add-int/2addr v6, v2

    .line 89
    add-int/2addr v5, v4

    .line 90
    add-int/2addr v5, v1

    .line 91
    if-ge v6, v4, :cond_4

    .line 92
    .line 93
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 94
    .line 95
    invoke-virtual {v0, v3, v6}, Landroid/view/View;->scrollTo(II)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->d0:Landroid/widget/FrameLayout;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 106
    .line 107
    mul-int/lit8 v2, v2, 0xa

    .line 108
    .line 109
    sub-int/2addr v1, v2

    .line 110
    sub-int/2addr v5, v1

    .line 111
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-le v1, v4, :cond_5

    .line 116
    .line 117
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->e0:Lcom/mycompany/app/web/WebNestView;

    .line 118
    .line 119
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_0
    return-void
.end method
