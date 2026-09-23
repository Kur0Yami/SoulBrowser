.class Lcom/mycompany/app/editor/EditorActivity$27;
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
        "Landroid/graphics/drawable/PictureDrawable;",
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
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$27;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 7

    .line 1
    check-cast p1, Landroid/graphics/drawable/PictureDrawable;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/editor/EditorActivity$27;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->g2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/mycompany/app/editor/EditorActivity;->h2:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v2, p2, Lcom/mycompany/app/editor/EditorActivity;->i2:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v3, p2, Lcom/mycompany/app/editor/EditorActivity;->j2:Z

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    iput-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->g2:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->h2:Landroid/net/Uri;

    .line 17
    .line 18
    iput-object v4, p2, Lcom/mycompany/app/editor/EditorActivity;->i2:Ljava/lang/String;

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
    const/4 v4, 0x0

    .line 26
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x1

    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object p1, p2, Lcom/mycompany/app/editor/EditorActivity;->m1:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p2, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 45
    .line 46
    invoke-virtual {p1, v6}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 47
    .line 48
    .line 49
    sget p1, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 50
    .line 51
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    iput-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v2, p2, Lcom/mycompany/app/editor/EditorActivity;->h1:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v2, p2, Lcom/mycompany/app/editor/EditorActivity;->h1:Ljava/lang/String;

    .line 75
    .line 76
    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->m1:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->p1:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->r1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 89
    .line 90
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->r1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->s1:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->x1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 104
    .line 105
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->x1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 109
    .line 110
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->y1:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->C1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 119
    .line 120
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyFadeFrame;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->D1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 124
    .line 125
    invoke-virtual {v0, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->D1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->E1:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->K1:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->N1:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 149
    .line 150
    if-eqz v0, :cond_5

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/mycompany/app/editor/core/PhotoEditor;->d()V

    .line 153
    .line 154
    .line 155
    :cond_5
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->O1:Lcom/mycompany/app/editor/EditorEffectAdapter;

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Lcom/mycompany/app/editor/EditorEffectAdapter;->v(I)V

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object v0, p2, Lcom/mycompany/app/editor/EditorActivity;->q1:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/mycompany/app/editor/core/PhotoEditorView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p2, Lcom/mycompany/app/editor/EditorActivity;->M1:Lcom/mycompany/app/view/MyCoverView;

    .line 168
    .line 169
    invoke-virtual {p1, v6}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final f(Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$27;->f:Lcom/mycompany/app/editor/EditorActivity;

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
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$27;->f:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/editor/EditorActivity;->j2:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->g2:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->h2:Landroid/net/Uri;

    .line 9
    .line 10
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorActivity;->i2:Ljava/lang/String;

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
