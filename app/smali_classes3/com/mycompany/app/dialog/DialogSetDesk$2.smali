.class Lcom/mycompany/app/dialog/DialogSetDesk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDesk;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDesk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDesk$2;->c:Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDesk$2;->c:Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    const v2, -0xc0c0c1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    const/high16 v2, 0x21000000

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    if-ge v1, v2, :cond_2

    .line 51
    .line 52
    sget-object v1, Lcom/mycompany/app/main/MainConst;->G:[Ljava/lang/String;

    .line 53
    .line 54
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 55
    .line 56
    aget-object v1, v1, v2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->b0:Landroid/content/Context;

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x64

    .line 62
    .line 63
    int-to-long v3, v1

    .line 64
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/db/book/DbBookAgent;->b(Landroid/content/Context;J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    const/4 v4, 0x1

    .line 72
    const/4 v5, 0x0

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    move v8, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->d0:Z

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    move v8, v4

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v8, v5

    .line 84
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 90
    .line 91
    sget v6, Lnet/kaki87/soul2/testing/R$string;->mobile_mode:I

    .line 92
    .line 93
    invoke-direct {v2, v6, v1, v5}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(ILjava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 100
    .line 101
    sget v2, Lnet/kaki87/soul2/testing/R$string;->desk_one:I

    .line 102
    .line 103
    invoke-direct {v1, v4, v2}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 110
    .line 111
    sget v2, Lnet/kaki87/soul2/testing/R$string;->desk_all:I

    .line 112
    .line 113
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(II)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance v6, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 120
    .line 121
    new-instance v11, Lcom/mycompany/app/dialog/DialogSetDesk$3;

    .line 122
    .line 123
    invoke-direct {v11, v0}, Lcom/mycompany/app/dialog/DialogSetDesk$3;-><init>(Lcom/mycompany/app/dialog/DialogSetDesk;)V

    .line 124
    .line 125
    .line 126
    const/4 v9, 0x3

    .line 127
    const/4 v10, 0x1

    .line 128
    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 129
    .line 130
    .line 131
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 134
    .line 135
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 139
    .line 140
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDesk$4;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDesk$4;-><init>(Lcom/mycompany/app/dialog/DialogSetDesk;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 156
    .line 157
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetDesk$5;

    .line 158
    .line 159
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetDesk$5;-><init>(Lcom/mycompany/app/dialog/DialogSetDesk;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_3
    return-void
.end method
