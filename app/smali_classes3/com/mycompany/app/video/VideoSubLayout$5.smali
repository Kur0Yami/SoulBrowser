.class Lcom/mycompany/app/video/VideoSubLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/video/VideoSubLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoSubLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoSubLayout$5;->f:Lcom/mycompany/app/video/VideoSubLayout;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/video/VideoSubLayout$5;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoSubLayout$5;->f:Lcom/mycompany/app/video/VideoSubLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_7

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz v1, :cond_7

    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->f:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_0
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->m:Z

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-ne v2, v1, :cond_3

    .line 48
    .line 49
    iget v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->n:I

    .line 50
    .line 51
    sget v4, Lcom/mycompany/app/pref/PrefSub;->n:I

    .line 52
    .line 53
    if-ne v2, v4, :cond_3

    .line 54
    .line 55
    iget v2, v0, Lcom/mycompany/app/video/VideoSubLayout;->o:I

    .line 56
    .line 57
    iget-object v4, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eq v2, v4, :cond_6

    .line 64
    .line 65
    :cond_3
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->m:Z

    .line 66
    .line 67
    sget v1, Lcom/mycompany/app/pref/PrefSub;->n:I

    .line 68
    .line 69
    iput v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->n:I

    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iput v1, v0, Lcom/mycompany/app/video/VideoSubLayout;->o:I

    .line 78
    .line 79
    invoke-static {v0}, Lcom/mycompany/app/video/VideoSubLayout;->a(Lcom/mycompany/app/video/VideoSubLayout;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v2, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v4, v0, Lcom/mycompany/app/video/VideoSubLayout;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    add-int/lit8 v5, v5, -0x1

    .line 95
    .line 96
    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 97
    .line 98
    .line 99
    iget-object v4, v0, Lcom/mycompany/app/video/VideoSubLayout;->g:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 106
    .line 107
    sub-int/2addr v4, v2

    .line 108
    if-le v1, v4, :cond_4

    .line 109
    .line 110
    move v1, v4

    .line 111
    :cond_4
    if-gez v1, :cond_5

    .line 112
    .line 113
    move v1, v3

    .line 114
    :cond_5
    invoke-static {v0, v1}, Lcom/mycompany/app/video/VideoSubLayout;->b(Lcom/mycompany/app/video/VideoSubLayout;I)V

    .line 115
    .line 116
    .line 117
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoSubLayout$5;->c:Z

    .line 118
    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Lcom/mycompany/app/video/VideoSubLayout;->d(Z)V

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_1
    return-void
.end method
