.class Lcom/mycompany/app/dialog/DialogSetRate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetRate;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate$2;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate$2;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/high16 v3, -0x1000000

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->d0:Lcom/mycompany/app/view/MyRoundItem;

    .line 23
    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    .line 31
    const v2, -0x50506

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const v2, -0x70708

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->d0:Lcom/mycompany/app/view/MyRoundItem;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$string;->youtube_speed:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 64
    .line 65
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->V:Z

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->d0:Lcom/mycompany/app/view/MyRoundItem;

    .line 72
    .line 73
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRate$3;

    .line 74
    .line 75
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetRate$3;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 82
    .line 83
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRate$4;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetRate$4;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_1
    sget-object v1, Lcom/mycompany/app/web/WebVideoFull;->o1:[F

    .line 97
    .line 98
    const/16 v2, 0x8

    .line 99
    .line 100
    if-ge v3, v2, :cond_3

    .line 101
    .line 102
    aget v1, v1, v3

    .line 103
    .line 104
    const/4 v2, 0x3

    .line 105
    if-ne v3, v2, :cond_2

    .line 106
    .line 107
    new-instance v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 108
    .line 109
    sget v2, Lnet/kaki87/soul2/testing/R$string;->normal_rate:I

    .line 110
    .line 111
    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v6, ""

    .line 123
    .line 124
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v2, v3, v1}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    new-instance v4, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 144
    .line 145
    iget v6, v0, Lcom/mycompany/app/dialog/DialogSetRate;->i0:I

    .line 146
    .line 147
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetRate$5;

    .line 148
    .line 149
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogSetRate$5;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

    .line 150
    .line 151
    .line 152
    const/4 v7, 0x3

    .line 153
    const/4 v8, 0x1

    .line 154
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/List;IIZLcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 155
    .line 156
    .line 157
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetRate;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 160
    .line 161
    const/4 v2, 0x1

    .line 162
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 166
    .line 167
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetRate;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 173
    .line 174
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRate$6;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetRate$6;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 180
    .line 181
    .line 182
    :cond_4
    :goto_3
    return-void
.end method
