.class public Lcom/mycompany/app/view/MyEditAuto;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;,
        Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;
    }
.end annotation


# instance fields
.field public A:Lcom/mycompany/app/main/MainActivity;

.field public B:Landroid/widget/ListPopupWindow;

.field public C:Landroid/widget/Filter;

.field public D:Ljava/lang/String;

.field public E:Z

.field public F:Ljava/lang/String;

.field public G:I

.field public H:Ljava/lang/String;

.field public I:I

.field public J:Ljava/lang/String;

.field public K:I

.field public L:Ljava/lang/String;

.field public M:I

.field public final N:Ljava/lang/Runnable;

.field public O:Ljava/lang/String;

.field public k:Z

.field public l:Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;

.field public m:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

.field public n:Ljava/util/List;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/graphics/Rect;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/mycompany/app/view/MyEditAuto$6;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyEditAuto$6;-><init>(Lcom/mycompany/app/view/MyEditAuto;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->N:Ljava/lang/Runnable;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyEditAuto;->k:Z

    .line 15
    .line 16
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->c5(Landroid/widget/EditText;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    and-int/lit8 v1, v0, 0xf

    .line 24
    .line 25
    if-ne v1, p1, :cond_0

    .line 26
    .line 27
    const/high16 v1, 0x10000

    .line 28
    .line 29
    or-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/mycompany/app/view/MyEditAuto$1;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/mycompany/app/view/MyEditAuto$2;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyEditAuto$2;-><init>(Lcom/mycompany/app/view/MyEditAuto;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static b(Lcom/mycompany/app/view/MyEditAuto;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->H:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyEditAuto;->I:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/mycompany/app/view/MyEditAuto;->H:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->F:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyEditAuto;->k:Z

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    iget v4, p0, Lcom/mycompany/app/view/MyEditAuto;->G:I

    .line 15
    .line 16
    if-ne v4, v1, :cond_1

    .line 17
    .line 18
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, v2}, Lcom/mycompany/app/view/MyEditAuto;->setTextAppend(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->J:Ljava/lang/String;

    .line 29
    .line 30
    iput v1, p0, Lcom/mycompany/app/view/MyEditAuto;->K:I

    .line 31
    .line 32
    new-instance v0, Lcom/mycompany/app/view/MyEditAuto$4;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyEditAuto$4;-><init>(Lcom/mycompany/app/view/MyEditAuto;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/view/MyEditAuto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyEditAuto;->setTextAppend(Ljava/lang/String;)V

    return-void
.end method

.method private setTextAppend(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->r:Landroid/graphics/Paint;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    new-instance v1, Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->r:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->r:Landroid/graphics/Paint;

    .line 41
    .line 42
    const v2, -0x7f6f3507

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    new-instance v1, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 58
    .line 59
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 72
    .line 73
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    iget-object v2, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eq v2, v3, :cond_4

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-virtual {v0, p1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->t:I

    .line 116
    .line 117
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 118
    .line 119
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 120
    .line 121
    iget v1, p0, Lcom/mycompany/app/view/MyEditAuto;->t:I

    .line 122
    .line 123
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    iget p1, p0, Lcom/mycompany/app/view/MyEditAuto;->u:I

    .line 126
    .line 127
    if-nez p1, :cond_6

    .line 128
    .line 129
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 130
    .line 131
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 132
    .line 133
    sub-int/2addr p1, v1

    .line 134
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->u:I

    .line 135
    .line 136
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-float/2addr v0, p1

    .line 145
    const/high16 p1, 0x40000000    # 2.0f

    .line 146
    .line 147
    div-float/2addr v0, p1

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->v:I

    .line 153
    .line 154
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    iget v1, p0, Lcom/mycompany/app/view/MyEditAuto;->y:I

    .line 159
    .line 160
    if-nez v1, :cond_7

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_7
    iget v2, p0, Lcom/mycompany/app/view/MyEditAuto;->u:I

    .line 164
    .line 165
    sub-int v3, v1, v2

    .line 166
    .line 167
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    add-int/2addr v2, v1

    .line 170
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 171
    .line 172
    sub-int/2addr v1, p1

    .line 173
    iput v1, p0, Lcom/mycompany/app/view/MyEditAuto;->w:I

    .line 174
    .line 175
    :cond_8
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz p1, :cond_a

    .line 182
    .line 183
    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 187
    .line 188
    .line 189
    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->A:Lcom/mycompany/app/main/MainActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->a1:Lcom/mycompany/app/view/MyEditAuto;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/view/MyEditAuto;->i(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p1

    .line 20
    :catch_0
    const/4 p1, 0x1

    .line 21
    return p1
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->n:Ljava/util/List;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyEditAuto;->setTextAppend(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyEditAuto;->k:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->l:Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->m:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->n:Ljava/util/List;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->r:Landroid/graphics/Paint;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->z:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->A:Lcom/mycompany/app/main/MainActivity;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->C:Landroid/widget/Filter;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->D:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lcom/mycompany/app/view/MyEditAuto;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAutoText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a7(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a7(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getSelected()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-gt v2, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    return-object v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->n:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lt v0, v3, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    if-lez v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    iput-object v2, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->O:Ljava/lang/String;

    .line 57
    .line 58
    new-instance p1, Lcom/mycompany/app/view/MyEditAuto$7;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyEditAuto$7;-><init>(Lcom/mycompany/app/view/MyEditAuto;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :cond_5
    :goto_1
    iput-object v2, p0, Lcom/mycompany/app/view/MyEditAuto;->O:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const-string v3, ""

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    iput-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {p0, v2}, Lcom/mycompany/app/view/MyEditAuto;->setTextAppend(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    iput-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 89
    .line 90
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v0, v3, :cond_8

    .line 101
    .line 102
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, v2}, Lcom/mycompany/app/view/MyEditAuto;->setTextAppend(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_9
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 118
    .line 119
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->N:Ljava/lang/Runnable;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->z:Ljava/util/concurrent/ExecutorService;

    .line 122
    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_a

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_c

    .line 136
    .line 137
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-nez v0, :cond_b

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_b
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->z:Ljava/util/concurrent/ExecutorService;

    .line 149
    .line 150
    :cond_c
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    :catch_0
    :cond_d
    :goto_2
    return v1
.end method

.method public final i(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mycompany/app/view/MyEditAuto;->o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/view/MyEditAuto;->F:Ljava/lang/String;

    .line 4
    .line 5
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->G:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/mycompany/app/view/MyEditAuto;->H:Ljava/lang/String;

    .line 8
    .line 9
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->I:I

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MyEditAuto$3;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyEditAuto$3;-><init>(Lcom/mycompany/app/view/MyEditAuto;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->A:Lcom/mycompany/app/main/MainActivity;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iput-object p0, v1, Lcom/mycompany/app/main/MainActivity;->a1:Lcom/mycompany/app/view/MyEditAuto;

    .line 11
    .line 12
    :cond_1
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 19
    .line 20
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x1f

    .line 24
    .line 25
    if-ge v0, v2, :cond_4

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyEditAuto;->E:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyEditAuto;->E:Z

    .line 46
    .line 47
    :cond_4
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDisplayHint(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->r:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->q:Ljava/lang/String;

    .line 17
    .line 18
    iget v1, p0, Lcom/mycompany/app/view/MyEditAuto;->w:I

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 p3, 0x18

    .line 7
    .line 8
    if-lt p2, p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->isTemporarilyDetached()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 9
    .line 10
    invoke-virtual {v2, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/16 v2, 0x3d

    .line 18
    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return p1
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->m:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne p1, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v3

    .line 19
    :goto_0
    iget-object v4, p0, Lcom/mycompany/app/view/MyEditAuto;->m:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 20
    .line 21
    invoke-interface {v4, v0, v3}, Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;->a(ZZ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    if-eq p1, v1, :cond_2

    .line 29
    .line 30
    const/16 v0, 0x6f

    .line 31
    .line 32
    if-ne p1, v0, :cond_6

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_6

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_6

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return v2

    .line 62
    :cond_4
    if-ne v0, v2, :cond_6

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x3d

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 11
    .line 12
    invoke-virtual {v3, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    const/16 v3, 0x17

    .line 19
    .line 20
    if-eq p1, v3, :cond_0

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    const/16 v3, 0x42

    .line 25
    .line 26
    if-eq p1, v3, :cond_0

    .line 27
    .line 28
    const/16 v3, 0xa0

    .line 29
    .line 30
    if-eq p1, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return v1

    .line 43
    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p2

    .line 5
    const/high16 p2, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p1, p2

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->y:I

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/view/MyEditAuto;->s:Landroid/graphics/Rect;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget p3, p0, Lcom/mycompany/app/view/MyEditAuto;->u:I

    .line 22
    .line 23
    sub-int p4, p1, p3

    .line 24
    .line 25
    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    add-int/2addr p3, p1

    .line 28
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    iget p2, p0, Lcom/mycompany/app/view/MyEditAuto;->v:I

    .line 31
    .line 32
    sub-int/2addr p1, p2

    .line 33
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->w:I

    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setAutoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->n:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setDropDownAdapter(Lcom/mycompany/app/web/WebSearchAdapter2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object v2, p1, Lcom/mycompany/app/web/WebSearchAdapter2;->z:Landroid/widget/Filter;

    .line 10
    .line 11
    iput-object v2, p0, Lcom/mycompany/app/view/MyEditAuto;->C:Landroid/widget/Filter;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->C:Landroid/widget/Filter;

    .line 15
    .line 16
    :goto_0
    iput-object v1, p0, Lcom/mycompany/app/view/MyEditAuto;->D:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setDropDownAnchor(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDropDownFilter(Landroid/widget/Filter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->C:Landroid/widget/Filter;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->D:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setEditAutoListener(Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->l:Lcom/mycompany/app/view/MyEditAuto$EditAutoListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->j()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return p1
.end method

.method public setOldKeyListener(Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditAuto;->m:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 7
    .line 8
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyEditAuto;->x:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyEditAuto;->x:I

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
