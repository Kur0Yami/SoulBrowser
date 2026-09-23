.class Lcom/mycompany/app/help/KeyHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/help/KeyHelper$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/KeyHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/KeyHelper$1$1;->c:Lcom/mycompany/app/help/KeyHelper$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/KeyHelper$1$1;->c:Lcom/mycompany/app/help/KeyHelper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/help/KeyHelper$1;->c:Lcom/mycompany/app/help/KeyHelper;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/help/KeyHelper;->c:Landroid/view/View;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->c:Landroid/view/View;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->c:Landroid/view/View;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/help/KeyHelper;->c:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/help/KeyHelper;->c:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    sub-int/2addr v2, v1

    .line 46
    iget v1, v0, Lcom/mycompany/app/help/KeyHelper;->h:I

    .line 47
    .line 48
    if-ne v1, v2, :cond_2

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_2
    iput v2, v0, Lcom/mycompany/app/help/KeyHelper;->h:I

    .line 53
    .line 54
    iget v1, v0, Lcom/mycompany/app/help/KeyHelper;->a:I

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    if-le v2, v1, :cond_8

    .line 58
    .line 59
    iget-boolean v1, v0, Lcom/mycompany/app/help/KeyHelper;->i:Z

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, v0, Lcom/mycompany/app/help/KeyHelper;->i:Z

    .line 65
    .line 66
    iget-object v2, v0, Lcom/mycompany/app/help/KeyHelper;->b:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-interface {v2, v1}, Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;->b(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->b:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-interface {v1}, Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;->a()V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/help/KeyHelper;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_b

    .line 86
    .line 87
    iget v1, v0, Lcom/mycompany/app/help/KeyHelper;->h:I

    .line 88
    .line 89
    iget-boolean v2, v0, Lcom/mycompany/app/help/KeyHelper;->f:Z

    .line 90
    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 95
    .line 96
    if-nez v2, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iget-object v4, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-lt v2, v4, :cond_7

    .line 110
    .line 111
    :goto_1
    move v2, v3

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    sget v2, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 114
    .line 115
    :goto_2
    sub-int/2addr v1, v2

    .line 116
    iget-object v2, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eq v2, v1, :cond_b

    .line 123
    .line 124
    iget-object v0, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 125
    .line 126
    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_8
    iget-boolean v1, v0, Lcom/mycompany/app/help/KeyHelper;->i:Z

    .line 131
    .line 132
    if-eqz v1, :cond_9

    .line 133
    .line 134
    iput-boolean v3, v0, Lcom/mycompany/app/help/KeyHelper;->i:Z

    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->b:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 137
    .line 138
    if-eqz v1, :cond_a

    .line 139
    .line 140
    invoke-interface {v1, v3}, Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;->b(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->b:Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;

    .line 145
    .line 146
    if-eqz v1, :cond_a

    .line 147
    .line 148
    invoke-interface {v1}, Lcom/mycompany/app/help/KeyHelper$KeyHelperListener;->a()V

    .line 149
    .line 150
    .line 151
    :cond_a
    :goto_3
    invoke-virtual {v0}, Lcom/mycompany/app/help/KeyHelper;->a()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_b

    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_b

    .line 164
    .line 165
    iget-object v0, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 166
    .line 167
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    .line 169
    .line 170
    :cond_b
    :goto_4
    return-void
.end method
