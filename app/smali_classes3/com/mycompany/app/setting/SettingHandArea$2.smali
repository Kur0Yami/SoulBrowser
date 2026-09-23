.class Lcom/mycompany/app/setting/SettingHandArea$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHandArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHandArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHandArea$2;->c:Lcom/mycompany/app/setting/SettingHandArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHandArea$2;->c:Lcom/mycompany/app/setting/SettingHandArea;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    const v2, -0x252526

    .line 11
    .line 12
    .line 13
    const v3, -0xc0c0c1

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v4, -0x50506

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->I1:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 58
    .line 59
    const v2, -0xdededf

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    const/high16 v4, -0x1000000

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 103
    .line 104
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 110
    .line 111
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->H1:Lcom/mycompany/app/view/MyRoundItem;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->I1:Landroid/view/View;

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 125
    .line 126
    const/4 v2, -0x1

    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    const/high16 v2, 0x21000000

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 150
    .line 151
    .line 152
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    new-instance v2, Lcom/mycompany/app/setting/SettingHandArea$3;

    .line 155
    .line 156
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHandArea$3;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 163
    .line 164
    new-instance v2, Lcom/mycompany/app/setting/SettingHandArea$4;

    .line 165
    .line 166
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHandArea$4;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHandArea;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    new-instance v2, Lcom/mycompany/app/setting/SettingHandArea$5;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHandArea$5;-><init>(Lcom/mycompany/app/setting/SettingHandArea;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method
