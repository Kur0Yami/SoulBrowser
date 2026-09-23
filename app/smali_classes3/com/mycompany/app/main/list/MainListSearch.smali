.class public Lcom/mycompany/app/main/list/MainListSearch;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/list/MainListSearch$ViewPagerAdapter;,
        Lcom/mycompany/app/main/list/MainListSearch$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic U1:I


# instance fields
.field public C1:Z

.field public D1:Lcom/mycompany/app/view/MyMainRelative;

.field public E1:Lcom/mycompany/app/view/MyButtonImage;

.field public F1:Landroidx/appcompat/widget/AppCompatTextView;

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public H1:Landroidx/appcompat/widget/AppCompatTextView;

.field public I1:Lcom/mycompany/app/view/MyButtonCheck;

.field public J1:Lcom/mycompany/app/view/MyLineText;

.field public K1:Landroidx/appcompat/widget/AppCompatTextView;

.field public L1:Lcom/google/android/material/tabs/TabLayout;

.field public M1:Landroidx/viewpager2/widget/ViewPager2;

.field public N1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public O1:Z

.field public P1:[Z

.field public Q1:Lcom/mycompany/app/view/MyRecyclerView;

.field public R1:Lcom/mycompany/app/main/MainSelectAdapter;

.field public S1:Landroid/widget/RelativeLayout;

.field public T1:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static D0(Lcom/mycompany/app/main/list/MainListSearch;ILcom/mycompany/app/main/MainItem$ChildItem;Z)V
    .locals 2

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    array-length p3, p2

    .line 10
    if-ge p1, p3, :cond_0

    .line 11
    .line 12
    const/4 p3, 0x1

    .line 13
    aput-boolean p3, p2, p1

    .line 14
    .line 15
    :cond_0
    sget p2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 16
    .line 17
    if-eq p2, p1, :cond_4

    .line 18
    .line 19
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    sput-object p1, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-nez p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->finish()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-wide v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 40
    .line 41
    long-to-int p1, v0

    .line 42
    add-int/lit8 p1, p1, 0x64

    .line 43
    .line 44
    sget p3, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 45
    .line 46
    if-ne p3, p1, :cond_3

    .line 47
    .line 48
    sget p3, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 49
    .line 50
    iget v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 51
    .line 52
    if-ne p3, v0, :cond_3

    .line 53
    .line 54
    sget-object p3, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p3, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_4

    .line 63
    .line 64
    :cond_3
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 65
    .line 66
    iget-object p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 67
    .line 68
    sput-object p1, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 69
    .line 70
    iget p1, p2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 71
    .line 72
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->finish()V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_1
    if-ltz v0, :cond_2

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_2

    .line 17
    .line 18
    aget-boolean v1, v1, v0

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :goto_0
    sget-object v3, Lcom/mycompany/app/main/MainConst;->D:[I

    .line 26
    .line 27
    array-length v3, v3

    .line 28
    if-ge v2, v3, :cond_5

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/mycompany/app/main/list/MainListSearch;->O1:Z

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    sget-object v3, Lcom/mycompany/app/main/MainConst;->C:[I

    .line 35
    .line 36
    aget v3, v3, v2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v3, v2

    .line 40
    :goto_1
    if-ltz v3, :cond_4

    .line 41
    .line 42
    iget-object v4, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 43
    .line 44
    array-length v5, v4

    .line 45
    if-ge v3, v5, :cond_4

    .line 46
    .line 47
    aget-boolean v4, v4, v3

    .line 48
    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    move v0, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    :goto_2
    if-ltz v0, :cond_6

    .line 57
    .line 58
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 59
    .line 60
    array-length v2, v2

    .line 61
    if-lt v0, v2, :cond_7

    .line 62
    .line 63
    :cond_6
    const/4 v0, 0x4

    .line 64
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    aput-boolean v3, v2, v0

    .line 68
    .line 69
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 70
    .line 71
    if-ne v2, v0, :cond_8

    .line 72
    .line 73
    :goto_3
    return-void

    .line 74
    :cond_8
    sput v0, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 78
    .line 79
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final F0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const v1, -0x50506

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_20:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    const v1, -0x3e3e3f

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->L1:Lcom/google/android/material/tabs/TabLayout;

    .line 63
    .line 64
    const v1, -0x4f4f50

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const v1, -0xdededf

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    const v1, -0xc0c0c1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 94
    .line 95
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 96
    .line 97
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 98
    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    const/high16 v1, -0x1000000

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_20:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 133
    .line 134
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 147
    .line 148
    const v1, -0xe19938

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    const v1, -0x9e9e9f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->L1:Lcom/google/android/material/tabs/TabLayout;

    .line 163
    .line 164
    const v1, -0x595616

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    const/4 v1, -0x1

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    .line 177
    .line 178
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 179
    .line 180
    const/high16 v1, 0x21000000

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 191
    .line 192
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 193
    .line 194
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 195
    .line 196
    invoke-virtual {v0, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final finish()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->E0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_2

    .line 18
    .line 19
    aget-boolean v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v4, v2, -0x1

    .line 25
    .line 26
    if-ge v3, v4, :cond_1

    .line 27
    .line 28
    const-string v4, "/"

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->i0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    sput-object v0, Lcom/mycompany/app/pref/PrefZone;->i0:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 57
    .line 58
    const/16 v2, 0xf

    .line 59
    .line 60
    const-string v3, "mSearchUse2"

    .line 61
    .line 62
    invoke-static {v2, v1, v3, v0}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->K0:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x9

    .line 12
    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-ne p1, v1, :cond_7

    .line 19
    .line 20
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->v0:Landroid/net/Uri;

    .line 21
    .line 22
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->v0:Landroid/net/Uri;

    .line 23
    .line 24
    if-eq p2, v3, :cond_1

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    if-nez p3, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_0
    if-nez v4, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    move-object p1, v4

    .line 39
    :goto_1
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 45
    .line 46
    if-nez p2, :cond_4

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_4
    if-nez p1, :cond_5

    .line 50
    .line 51
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 52
    .line 53
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 54
    .line 55
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_5
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->w0:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_6

    .line 72
    .line 73
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 74
    .line 75
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 76
    .line 77
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    new-instance p2, Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 84
    .line 85
    const-class v1, Lcom/mycompany/app/main/image/MainImageCropper;

    .line 86
    .line 87
    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string p1, "EXTRA_DST"

    .line 94
    .line 95
    iget-object p3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->w0:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string p1, "EXTRA_ICON"

    .line 101
    .line 102
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 106
    .line 107
    invoke-virtual {p1, p2, v2}, Lcom/mycompany/app/main/MainActivity;->t0(Landroid/content/Intent;I)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_7
    if-ne p1, v2, :cond_b

    .line 112
    .line 113
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->w0:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->w0:Ljava/lang/String;

    .line 116
    .line 117
    if-eq p2, v3, :cond_8

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-nez p2, :cond_a

    .line 125
    .line 126
    new-instance p2, Ljava/io/File;

    .line 127
    .line 128
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-nez p2, :cond_9

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    iput-boolean v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->j0:Z

    .line 139
    .line 140
    const/4 p2, 0x0

    .line 141
    invoke-virtual {v0, p2, p2, p1}, Lcom/mycompany/app/dialog/DialogEditSearch;->E(IILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_a
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 146
    .line 147
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 148
    .line 149
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 150
    .line 151
    .line 152
    :cond_b
    :goto_3
    return-void
.end method

.method public final l0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->finish()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->finish()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_6

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/high16 v1, -0x1000000

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v1, -0x70708

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListSearch;->F0()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    if-eqz p1, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const v0, -0x9e9e9f

    .line 48
    .line 49
    .line 50
    const v1, -0xe19938

    .line 51
    .line 52
    .line 53
    const v2, -0x3e3e3f

    .line 54
    .line 55
    .line 56
    const v3, -0x50506

    .line 57
    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->C1:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0xc

    .line 19
    .line 20
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 21
    .line 22
    .line 23
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 24
    .line 25
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 26
    .line 27
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_cast_ctrl:I

    .line 28
    .line 29
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 30
    .line 31
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    const/4 v9, -0x1

    .line 37
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    new-instance v8, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    .line 50
    .line 51
    const/4 v10, 0x2

    .line 52
    invoke-static {v9, v9, v10, v6}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-virtual {v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    new-instance v10, Lcom/mycompany/app/view/MyHeaderView;

    .line 60
    .line 61
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 65
    .line 66
    invoke-virtual {v8, v10, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 67
    .line 68
    .line 69
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    .line 78
    .line 79
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .line 81
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 82
    .line 83
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 84
    .line 85
    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 89
    .line 90
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-direct {v13, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    .line 100
    .line 101
    const/16 v14, 0x10

    .line 102
    .line 103
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 107
    .line 108
    .line 109
    const/high16 v15, 0x41900000    # 18.0f

    .line 110
    .line 111
    invoke-virtual {v13, v1, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 112
    .line 113
    .line 114
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    .line 116
    sget v2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 117
    .line 118
    invoke-direct {v15, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 122
    .line 123
    .line 124
    sget v2, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 125
    .line 126
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Landroid/widget/FrameLayout;

    .line 133
    .line 134
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    .line 142
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 143
    .line 144
    const/4 v9, -0x2

    .line 145
    invoke-direct {v4, v9, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    .line 150
    .line 151
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 152
    .line 153
    iput v15, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    .line 155
    invoke-virtual {v10, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .line 157
    .line 158
    const/high16 v4, 0x41600000    # 14.0f

    .line 159
    .line 160
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    float-to-int v4, v4

    .line 165
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 177
    .line 178
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 179
    .line 180
    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    const v12, 0x800005

    .line 184
    .line 185
    .line 186
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 187
    .line 188
    invoke-virtual {v2, v15, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    invoke-direct {v4, v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    .line 195
    .line 196
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    invoke-virtual {v4, v3, v12, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 203
    .line 204
    .line 205
    const/4 v3, 0x3

    .line 206
    invoke-virtual {v4, v3}, Landroid/view/View;->setTextDirection(I)V

    .line 207
    .line 208
    .line 209
    const/high16 v3, 0x41800000    # 16.0f

    .line 210
    .line 211
    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 212
    .line 213
    .line 214
    const/16 v14, 0x8

    .line 215
    .line 216
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 220
    .line 221
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 222
    .line 223
    invoke-direct {v1, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 224
    .line 225
    .line 226
    const v3, 0x800005

    .line 227
    .line 228
    .line 229
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    .line 231
    const/high16 v3, 0x42500000    # 52.0f

    .line 232
    .line 233
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    float-to-int v3, v3

    .line 238
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    new-instance v1, Lcom/mycompany/app/view/MyButtonCheck;

    .line 245
    .line 246
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    .line 254
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 255
    .line 256
    invoke-direct {v3, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 257
    .line 258
    .line 259
    const v14, 0x800005

    .line 260
    .line 261
    .line 262
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 263
    .line 264
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .line 266
    .line 267
    new-instance v2, Landroid/widget/FrameLayout;

    .line 268
    .line 269
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 273
    .line 274
    .line 275
    const/4 v3, 0x4

    .line 276
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 280
    .line 281
    sget v5, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 282
    .line 283
    invoke-direct {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .line 285
    .line 286
    const/16 v5, 0x15

    .line 287
    .line 288
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    .line 293
    .line 294
    new-instance v3, Landroid/widget/LinearLayout;

    .line 295
    .line 296
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 303
    .line 304
    .line 305
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 306
    .line 307
    const/4 v10, -0x1

    .line 308
    invoke-virtual {v8, v3, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 309
    .line 310
    .line 311
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 312
    .line 313
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    const/16 v14, 0x11

    .line 317
    .line 318
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 319
    .line 320
    .line 321
    const/4 v9, 0x1

    .line 322
    const/high16 v14, 0x41800000    # 16.0f

    .line 323
    .line 324
    invoke-virtual {v5, v9, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 325
    .line 326
    .line 327
    sget v9, Lnet/kaki87/soul2/testing/R$string;->default_title:I

    .line 328
    .line 329
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 333
    .line 334
    .line 335
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 336
    .line 337
    invoke-direct {v9, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .line 339
    .line 340
    const/high16 v14, 0x3f800000    # 1.0f

    .line 341
    .line 342
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 343
    .line 344
    invoke-virtual {v3, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .line 346
    .line 347
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    .line 349
    const/4 v14, 0x0

    .line 350
    invoke-direct {v9, v0, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 351
    .line 352
    .line 353
    const/16 v14, 0x11

    .line 354
    .line 355
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 356
    .line 357
    .line 358
    const/high16 v10, 0x41800000    # 16.0f

    .line 359
    .line 360
    const/4 v14, 0x1

    .line 361
    invoke-virtual {v9, v14, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 362
    .line 363
    .line 364
    sget v10, Lnet/kaki87/soul2/testing/R$string;->user_defined:I

    .line 365
    .line 366
    const/4 v14, -0x1

    .line 367
    invoke-static {v9, v10, v12, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    const/high16 v14, 0x3f800000    # 1.0f

    .line 372
    .line 373
    iput v14, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 374
    .line 375
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    new-instance v3, Lcom/google/android/material/tabs/TabLayout;

    .line 379
    .line 380
    invoke-direct {v3, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 381
    .line 382
    .line 383
    const/4 v14, 0x1

    .line 384
    invoke-virtual {v3, v14}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v12}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 388
    .line 389
    .line 390
    const/high16 v10, 0x40000000    # 2.0f

    .line 391
    .line 392
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    float-to-int v10, v10

    .line 397
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .line 399
    const/4 v12, -0x1

    .line 400
    invoke-direct {v14, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    .line 402
    .line 403
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 404
    .line 405
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 406
    .line 407
    .line 408
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 409
    .line 410
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    .line 415
    .line 416
    new-instance v10, Landroidx/viewpager2/widget/ViewPager2;

    .line 417
    .line 418
    invoke-direct {v10, v0}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 419
    .line 420
    .line 421
    const/4 v14, 0x0

    .line 422
    invoke-virtual {v10, v14}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v8, v10, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 426
    .line 427
    .line 428
    new-instance v8, Landroid/widget/FrameLayout;

    .line 429
    .line 430
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8, v6}, Landroid/view/View;->setId(I)V

    .line 434
    .line 435
    .line 436
    const/16 v6, 0x8

    .line 437
    .line 438
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 442
    .line 443
    const/4 v14, -0x2

    .line 444
    invoke-direct {v6, v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 445
    .line 446
    .line 447
    const/16 v12, 0xc

    .line 448
    .line 449
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    .line 454
    .line 455
    iput-object v7, v0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 456
    .line 457
    iput-object v11, v0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 458
    .line 459
    iput-object v13, v0, Lcom/mycompany/app/main/list/MainListSearch;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 460
    .line 461
    iput-object v15, v0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 462
    .line 463
    iput-object v4, v0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 464
    .line 465
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 466
    .line 467
    iput-object v5, v0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 468
    .line 469
    iput-object v9, v0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 470
    .line 471
    iput-object v3, v0, Lcom/mycompany/app/main/list/MainListSearch;->L1:Lcom/google/android/material/tabs/TabLayout;

    .line 472
    .line 473
    iput-object v10, v0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 474
    .line 475
    invoke-virtual {v0, v7, v2, v8}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 476
    .line 477
    .line 478
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 479
    .line 480
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 485
    .line 486
    .line 487
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 488
    .line 489
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 490
    .line 491
    .line 492
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 493
    .line 494
    if-nez v1, :cond_0

    .line 495
    .line 496
    return-void

    .line 497
    :cond_0
    new-instance v2, Lcom/mycompany/app/main/list/MainListSearch$1;

    .line 498
    .line 499
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListSearch$1;-><init>(Lcom/mycompany/app/main/list/MainListSearch;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    .line 504
    .line 505
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListSearch;->N1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->M1:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->N1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->f(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->I1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->J1:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->Q1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->R1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainSelectAdapter;->w()V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->R1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 86
    .line 87
    :cond_8
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 88
    .line 89
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->L1:Lcom/google/android/material/tabs/TabLayout;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->P1:[Z

    .line 98
    .line 99
    iput-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->S1:Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p2, Lcom/mycompany/app/main/MainListView;->K0:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x1e

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    array-length p1, p3

    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    aget p3, p3, p1

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p2, Lcom/mycompany/app/dialog/DialogEditSearch;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    const/16 v0, 0x9

    .line 30
    .line 31
    invoke-static {v0, p3, p1}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogEditSearch;->v0:Landroid/net/Uri;

    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListSearch;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/main/list/MainListSearch;->C1:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListSearch;->T1:Lcom/mycompany/app/main/MainListView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0, v0, v1}, Lcom/mycompany/app/main/MainListView;->R(ZZZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
