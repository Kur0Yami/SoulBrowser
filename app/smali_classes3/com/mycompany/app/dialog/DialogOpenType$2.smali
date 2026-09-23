.class Lcom/mycompany/app/dialog/DialogOpenType$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogOpenType;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOpenType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOpenType$2;->c:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOpenType$2;->c:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    const/4 v2, 0x7

    .line 21
    const/4 v4, 0x6

    .line 22
    const/4 v5, 0x5

    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 28
    .line 29
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_dark_24:I

    .line 30
    .line 31
    sget v9, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 32
    .line 33
    invoke-direct {v1, v6, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 40
    .line 41
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 42
    .line 43
    sget v8, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 44
    .line 45
    invoke-direct {v1, v5, v6, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 52
    .line 53
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_dark_24:I

    .line 54
    .line 55
    sget v6, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 56
    .line 57
    invoke-direct {v1, v4, v5, v6}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 64
    .line 65
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_description_dark_24:I

    .line 66
    .line 67
    sget v5, Lnet/kaki87/soul2/testing/R$string;->doc:I

    .line 68
    .line 69
    invoke-direct {v1, v2, v4, v5}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 76
    .line 77
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_dark_24:I

    .line 78
    .line 79
    sget v4, Lnet/kaki87/soul2/testing/R$string;->others:I

    .line 80
    .line 81
    invoke-direct {v1, v7, v2, v4}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 89
    .line 90
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 91
    .line 92
    sget v9, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 93
    .line 94
    invoke-direct {v1, v6, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 101
    .line 102
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 103
    .line 104
    sget v8, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 105
    .line 106
    invoke-direct {v1, v5, v6, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 113
    .line 114
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->baseline_music_note_black_24:I

    .line 115
    .line 116
    sget v6, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 117
    .line 118
    invoke-direct {v1, v4, v5, v6}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 125
    .line 126
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_description_black_24:I

    .line 127
    .line 128
    sget v5, Lnet/kaki87/soul2/testing/R$string;->doc:I

    .line 129
    .line 130
    invoke-direct {v1, v2, v4, v5}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 137
    .line 138
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 139
    .line 140
    sget v4, Lnet/kaki87/soul2/testing/R$string;->others:I

    .line 141
    .line 142
    invoke-direct {v1, v7, v2, v4}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :goto_0
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 149
    .line 150
    new-instance v7, Lcom/mycompany/app/dialog/DialogOpenType$3;

    .line 151
    .line 152
    invoke-direct {v7, v0}, Lcom/mycompany/app/dialog/DialogOpenType$3;-><init>(Lcom/mycompany/app/dialog/DialogOpenType;)V

    .line 153
    .line 154
    .line 155
    const/4 v4, -0x1

    .line 156
    const/4 v5, 0x5

    .line 157
    const/4 v6, 0x0

    .line 158
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogOpenType;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 170
    .line 171
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogOpenType;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOpenType;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 177
    .line 178
    new-instance v2, Lcom/mycompany/app/dialog/DialogOpenType$4;

    .line 179
    .line 180
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogOpenType$4;-><init>(Lcom/mycompany/app/dialog/DialogOpenType;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    :goto_1
    return-void
.end method
