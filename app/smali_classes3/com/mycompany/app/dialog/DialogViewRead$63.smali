.class Lcom/mycompany/app/dialog/DialogViewRead$63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$63;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewRead$63;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogViewRead;->S2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$63;->f:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewRead$63;->c:Ljava/lang/String;

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
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    const-string v2, ","

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    array-length v2, v1

    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    aget-object v4, v1, v3

    .line 35
    .line 36
    const/high16 v5, -0x40800000    # -1.0f

    .line 37
    .line 38
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->F6(Ljava/lang/String;F)F

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    aget-object v1, v1, v6

    .line 54
    .line 55
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->F6(Ljava/lang/String;F)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static {v4, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v4, -0x1

    .line 68
    if-eq v2, v4, :cond_5

    .line 69
    .line 70
    if-ne v1, v4, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 74
    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 83
    .line 84
    sub-int/2addr v4, v5

    .line 85
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 86
    .line 87
    sub-int v6, v4, v5

    .line 88
    .line 89
    add-int/2addr v6, v2

    .line 90
    add-int/2addr v5, v4

    .line 91
    add-int/2addr v5, v1

    .line 92
    iget v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->v1:I

    .line 93
    .line 94
    sub-int v1, v6, v1

    .line 95
    .line 96
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ge v1, v4, :cond_4

    .line 101
    .line 102
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 103
    .line 104
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->x:Lcom/mycompany/app/view/MyRoundItem;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 115
    .line 116
    mul-int/lit8 v2, v2, 0xf

    .line 117
    .line 118
    sub-int/2addr v1, v2

    .line 119
    sub-int/2addr v5, v1

    .line 120
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-le v1, v4, :cond_5

    .line 125
    .line 126
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 127
    .line 128
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->scrollTo(II)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_0
    return-void
.end method
