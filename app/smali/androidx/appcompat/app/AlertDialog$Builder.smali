.class public Landroidx/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$AlertParams;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertDialog;->f(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 10
    .line 11
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertDialog;->f(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertController$AlertParams;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 24
    .line 25
    iput v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->b:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/app/AlertDialog;
    .locals 11

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    iget v3, p0, Landroidx/appcompat/app/AlertDialog$Builder;->b:I

    .line 8
    .line 9
    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->e:Landroid/view/View;

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/appcompat/app/AlertDialog;->j:Landroidx/appcompat/app/AlertController;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->r:Landroid/view/View;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->d:Ljava/lang/CharSequence;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->d:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->p:Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->c:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->n:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v5, v3, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->f:Ljava/lang/CharSequence;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v6, v1, Landroidx/appcompat/app/AlertController$AlertParams;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    iget-object v7, v3, Landroidx/appcompat/app/AlertController;->z:Landroid/os/Handler;

    .line 64
    .line 65
    const/4 v8, -0x2

    .line 66
    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    move-object v6, v5

    .line 72
    :goto_1
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->j:Ljava/lang/CharSequence;

    .line 73
    .line 74
    iput-object v6, v3, Landroidx/appcompat/app/AlertController;->k:Landroid/os/Message;

    .line 75
    .line 76
    :goto_2
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/widget/ListAdapter;

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    if-eqz v2, :cond_9

    .line 80
    .line 81
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->b:Landroid/view/LayoutInflater;

    .line 82
    .line 83
    iget v7, v3, Landroidx/appcompat/app/AlertController;->v:I

    .line 84
    .line 85
    invoke-virtual {v2, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 90
    .line 91
    iget-boolean v7, v1, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    .line 92
    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    iget v7, v3, Landroidx/appcompat/app/AlertController;->w:I

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    iget v7, v3, Landroidx/appcompat/app/AlertController;->x:I

    .line 99
    .line 100
    :goto_3
    iget-object v8, v1, Landroidx/appcompat/app/AlertController$AlertParams;->i:Landroid/widget/ListAdapter;

    .line 101
    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    new-instance v8, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    .line 106
    .line 107
    iget-object v9, v1, Landroidx/appcompat/app/AlertController$AlertParams;->a:Landroid/view/ContextThemeWrapper;

    .line 108
    .line 109
    const v10, 0x1020014

    .line 110
    .line 111
    .line 112
    invoke-direct {v8, v9, v7, v10, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :goto_4
    iput-object v8, v3, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/ListAdapter;

    .line 116
    .line 117
    iget v7, v1, Landroidx/appcompat/app/AlertController$AlertParams;->m:I

    .line 118
    .line 119
    iput v7, v3, Landroidx/appcompat/app/AlertController;->t:I

    .line 120
    .line 121
    iget-object v7, v1, Landroidx/appcompat/app/AlertController$AlertParams;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    .line 123
    if-eqz v7, :cond_7

    .line 124
    .line 125
    new-instance v7, Landroidx/appcompat/app/AlertController$AlertParams$3;

    .line 126
    .line 127
    invoke-direct {v7, v1, v3}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-boolean v7, v1, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    .line 134
    .line 135
    if-eqz v7, :cond_8

    .line 136
    .line 137
    invoke-virtual {v2, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 138
    .line 139
    .line 140
    :cond_8
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 141
    .line 142
    :cond_9
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->k:Landroid/view/View;

    .line 143
    .line 144
    if-eqz v2, :cond_a

    .line 145
    .line 146
    iput-object v2, v3, Landroidx/appcompat/app/AlertController;->f:Landroid/view/View;

    .line 147
    .line 148
    iput-boolean v4, v3, Landroidx/appcompat/app/AlertController;->g:Z

    .line 149
    .line 150
    :cond_a
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->h:Landroid/content/DialogInterface$OnKeyListener;

    .line 163
    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 167
    .line 168
    .line 169
    :cond_b
    return-object v0
.end method
