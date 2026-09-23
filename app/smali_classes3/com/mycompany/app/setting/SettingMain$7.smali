.class Lcom/mycompany/app/setting/SettingMain$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$7;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain$7;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const/high16 v3, -0x1000000

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 27
    .line 28
    const v2, -0x50506

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    const v2, -0xc0c0c1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const v2, -0x70708

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    const v2, -0x1f1f20

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 98
    .line 99
    .line 100
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->k2:Lcom/mycompany/app/view/MyRoundView;

    .line 101
    .line 102
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 103
    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    const v2, -0xdededf

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const/4 v2, -0x1

    .line 111
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$8;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->i2:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$9;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$9;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->j2:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$10;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$10;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 145
    .line 146
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$11;

    .line 147
    .line 148
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$11;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 155
    .line 156
    if-nez v1, :cond_3

    .line 157
    .line 158
    return-void

    .line 159
    :cond_3
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$12;

    .line 160
    .line 161
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$12;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 169
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 170
    .line 171
    return-void
.end method
