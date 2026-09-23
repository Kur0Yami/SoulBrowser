.class Lcom/mycompany/app/editor/EditorActivity$25;
.super Lcom/mycompany/app/view/MyGlideTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/editor/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mycompany/app/view/MyGlideTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$25;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 7

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/editor/EditorActivity$25;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->b2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/mycompany/app/editor/EditorActivity;->c2:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v2, p2, Lcom/mycompany/app/editor/EditorActivity;->d2:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v3, p2, Lcom/mycompany/app/editor/EditorActivity;->e2:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    iput-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->b2:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->c2:Landroid/net/Uri;

    .line 17
    .line 18
    iput-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->d2:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->m1:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iget-object p1, p2, Lcom/mycompany/app/editor/EditorActivity;->m1:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p2, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 41
    .line 42
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 43
    .line 44
    .line 45
    sget p1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 46
    .line 47
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    iput-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v2, p2, Lcom/mycompany/app/editor/EditorActivity;->h1:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    if-eqz v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, p2, Lcom/mycompany/app/editor/EditorActivity;->h1:Ljava/lang/String;

    .line 71
    .line 72
    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->m1:Landroid/widget/RelativeLayout;

    .line 73
    .line 74
    const/16 v1, 0x8

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->p1:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->r1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 85
    .line 86
    invoke-virtual {v0, v6, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->r1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 90
    .line 91
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->s1:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->x1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 100
    .line 101
    invoke-virtual {v0, v6, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->x1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->y1:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->C1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 115
    .line 116
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->D1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 120
    .line 121
    invoke-virtual {v0, v6, v6}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->D1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 125
    .line 126
    invoke-virtual {v0, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->E1:Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->K1:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->N1:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 145
    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/mycompany/app/editor/core/PhotoEditor;->d()V

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->O1:Lcom/mycompany/app/editor/EditorEffectAdapter;

    .line 152
    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    invoke-virtual {v0, v6}, Lcom/mycompany/app/editor/EditorEffectAdapter;->v(I)V

    .line 156
    .line 157
    .line 158
    :cond_6
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->q1:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lcom/mycompany/app/editor/core/PhotoEditorView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p2, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 164
    .line 165
    invoke-virtual {p1, v5}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final f(Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$25;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->q1:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v0, v0, Lcom/mycompany/app/editor/EditorActivity;->q1:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->b(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$25;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/editor/EditorActivity;->e2:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->b2:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->c2:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->d2:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->m1:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 27
    .line 28
    .line 29
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
