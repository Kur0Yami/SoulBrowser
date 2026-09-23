.class Lcom/mycompany/app/setting/SettingVideoSub$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$25;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$25;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->J1:Lcom/mycompany/app/video/VideoSubLayout2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/video/VideoSubLayout2;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/video/VideoSubLayout2;->x:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v4, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    .line 31
    .line 32
    const/16 v6, 0x11

    .line 33
    .line 34
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    .line 36
    .line 37
    const/4 v7, -0x1

    .line 38
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    const/high16 v8, 0x40a00000    # 5.0f

    .line 42
    .line 43
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    float-to-int v9, v9

    .line 48
    int-to-float v9, v9

    .line 49
    const/high16 v10, 0x3f800000    # 1.0f

    .line 50
    .line 51
    invoke-virtual {v4, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 52
    .line 53
    .line 54
    const/16 v9, 0x8

    .line 55
    .line 56
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    .line 61
    const/4 v12, -0x2

    .line 62
    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    invoke-virtual {v3, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance v11, Lcom/mycompany/app/view/MyTextSub;

    .line 71
    .line 72
    invoke-direct {v11, v2}, Lcom/mycompany/app/view/MyTextSub;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    float-to-int v13, v13

    .line 86
    int-to-float v13, v13

    .line 87
    invoke-virtual {v11, v13, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .line 95
    invoke-direct {v9, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    iput v6, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    .line 100
    invoke-virtual {v3, v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-direct {v9, v2, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    float-to-int v2, v2

    .line 119
    int-to-float v2, v2

    .line 120
    invoke-virtual {v9, v2, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    .line 125
    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .line 127
    .line 128
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    .line 130
    invoke-virtual {v3, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 134
    .line 135
    .line 136
    iput-object v4, v1, Lcom/mycompany/app/video/VideoSubLayout2;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    iput-object v11, v1, Lcom/mycompany/app/video/VideoSubLayout2;->z:Lcom/mycompany/app/view/MyTextSub;

    .line 139
    .line 140
    iput-object v9, v1, Lcom/mycompany/app/video/VideoSubLayout2;->A:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    const/4 v1, 0x2

    .line 143
    invoke-virtual {v11, v1}, Lcom/mycompany/app/view/MyTextSub;->setOutlineType(I)V

    .line 144
    .line 145
    .line 146
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 147
    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    :goto_1
    return-void

    .line 151
    :cond_3
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoSub$25$1;

    .line 152
    .line 153
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingVideoSub$25$1;-><init>(Lcom/mycompany/app/setting/SettingVideoSub$25;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 157
    .line 158
    .line 159
    return-void
.end method
