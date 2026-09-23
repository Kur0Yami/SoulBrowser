.class public Lcom/mycompany/app/dialog/DialogBackupSave;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;
    }
.end annotation


# static fields
.field public static final V0:[Ljava/lang/String;

.field public static final W0:[Ljava/lang/String;

.field public static final X0:[Ljava/lang/String;

.field public static final Y0:[Ljava/lang/String;


# instance fields
.field public A0:Lcom/mycompany/app/view/MyEditText;

.field public B0:Lcom/mycompany/app/view/MyLineRelative;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Landroidx/appcompat/widget/AppCompatTextView;

.field public E0:Landroid/widget/FrameLayout;

.field public F0:Landroidx/appcompat/widget/AppCompatTextView;

.field public G0:Lcom/mycompany/app/view/MyProgressBar;

.field public H0:I

.field public I0:I

.field public J0:J

.field public K0:Landroidx/appcompat/widget/AppCompatTextView;

.field public L0:Lcom/mycompany/app/view/MyLineText;

.field public M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

.field public N0:Z

.field public O0:Z

.field public P0:I

.field public Q0:Ljava/util/ArrayList;

.field public R0:Ljava/lang/String;

.field public S0:Lcom/mycompany/app/view/MyPopupMenu;

.field public T0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public final U0:Ljava/lang/Runnable;

.field public final a0:I

.field public b0:Lcom/mycompany/app/setting/SettingBackup;

.field public c0:Landroid/content/Context;

.field public d0:Lcom/mycompany/app/gdrive/GdriveManager;

.field public e0:Lcom/mycompany/app/view/MyDialogLinear;

.field public f0:Landroidx/core/widget/NestedScrollView;

.field public g0:Lcom/mycompany/app/view/MyLineFrame;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyButtonCheck;

.field public j0:Lcom/mycompany/app/view/MyLineFrame;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Lcom/mycompany/app/view/MyButtonCheck;

.field public m0:Lcom/mycompany/app/view/MyLineFrame;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Lcom/mycompany/app/view/MyButtonCheck;

.field public p0:Lcom/mycompany/app/view/MyLineFrame;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Lcom/mycompany/app/view/MyButtonCheck;

.field public s0:Lcom/mycompany/app/view/MyLineFrame;

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u0:Lcom/mycompany/app/view/MyButtonCheck;

.field public v0:Lcom/mycompany/app/view/MyRoundItem;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Lcom/mycompany/app/view/MyButtonCheck;

.field public a1:Lcom/mycompany/app/view/MyLineFrame;

.field public b1:Landroidx/appcompat/widget/AppCompatTextView;

.field public c1:Lcom/mycompany/app/view/MyButtonCheck;

.field public y0:Lcom/mycompany/app/view/MyRoundItem;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const-string v15, "PrefZtwo"

    .line 2
    .line 3
    const-string v16, "PrefZtri"

    .line 4
    .line 5
    const-string v1, "PrefAlbum"

    .line 6
    .line 7
    const-string v2, "PrefEditor"

    .line 8
    .line 9
    const-string v3, "PrefFloat"

    .line 10
    .line 11
    const-string v4, "PrefImage"

    .line 12
    .line 13
    const-string v5, "PrefList"

    .line 14
    .line 15
    const-string v6, "PrefMain"

    .line 16
    .line 17
    const-string v7, "PrefPdf"

    .line 18
    .line 19
    const-string v8, "PrefRead"

    .line 20
    .line 21
    const-string v9, "PrefSecret"

    .line 22
    .line 23
    const-string v10, "PrefSync"

    .line 24
    .line 25
    const-string v11, "PrefTts"

    .line 26
    .line 27
    const-string v12, "PrefVideo"

    .line 28
    .line 29
    const-string v13, "PrefWeb"

    .line 30
    .line 31
    const-string v14, "PrefZone"

    .line 32
    .line 33
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/mycompany/app/dialog/DialogBackupSave;->V0:[Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "sec_port.jpg"

    .line 40
    .line 41
    const-string v1, "sec_land.jpg"

    .line 42
    .line 43
    const-string v2, "back.jpg"

    .line 44
    .line 45
    const-string v3, "nor_land.jpg"

    .line 46
    .line 47
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/mycompany/app/dialog/DialogBackupSave;->W0:[Ljava/lang/String;

    .line 52
    .line 53
    const-string v18, "DbBookTrans.db"

    .line 54
    .line 55
    const-string v19, "DbBookUser.db"

    .line 56
    .line 57
    const-string v20, "DbRecentLang.db"

    .line 58
    .line 59
    const-string v1, "DbAdsCmd.db"

    .line 60
    .line 61
    const-string v2, "DbBookAds.db"

    .line 62
    .line 63
    const-string v3, "DbBookAgent.db"

    .line 64
    .line 65
    const-string v4, "DbBookBlock.db"

    .line 66
    .line 67
    const-string v5, "DbBookDc.db"

    .line 68
    .line 69
    const-string v6, "DbBookFilter.db"

    .line 70
    .line 71
    const-string v7, "DbBookJava.db"

    .line 72
    .line 73
    const-string v8, "DbBookLink.db"

    .line 74
    .line 75
    const-string v9, "DbBookLocale.db"

    .line 76
    .line 77
    const-string v10, "DbBookMemo.db"

    .line 78
    .line 79
    const-string v11, "DbBookOver.db"

    .line 80
    .line 81
    const-string v12, "DbBookPop.db"

    .line 82
    .line 83
    const-string v13, "DbBookRecent.db"

    .line 84
    .line 85
    const-string v14, "DbBookScript.db"

    .line 86
    .line 87
    const-string v15, "DbBookSearch.db"

    .line 88
    .line 89
    const-string v16, "DbBookTheme.db"

    .line 90
    .line 91
    const-string v17, "DbBookTmem.db"

    .line 92
    .line 93
    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/mycompany/app/dialog/DialogBackupSave;->X0:[Ljava/lang/String;

    .line 96
    .line 97
    const-string v7, "DbTabState.db"

    .line 98
    .line 99
    const-string v8, "DbTabThumb.db"

    .line 100
    .line 101
    const-string v1, "DbBookHistory.db"

    .line 102
    .line 103
    const-string v2, "DbBookIcon.db"

    .line 104
    .line 105
    const-string v3, "DbBookPass.db"

    .line 106
    .line 107
    const-string v4, "DbBookQuick.db"

    .line 108
    .line 109
    const-string v5, "DbBookTab3.db"

    .line 110
    .line 111
    const-string v6, "DbBookWeb.db"

    .line 112
    .line 113
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lcom/mycompany/app/dialog/DialogBackupSave;->Y0:[Ljava/lang/String;

    .line 118
    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;Lcom/mycompany/app/gdrive/GdriveManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogBackupSave$21;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogBackupSave$21;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->U0:Ljava/lang/Runnable;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->a0:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->b0:Lcom/mycompany/app/setting/SettingBackup;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->d0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 23
    .line 24
    new-instance p1, Lcom/mycompany/app/dialog/DialogBackupSave$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogBackupSave$1;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogBackupSave;)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_title_view:I

    .line 10
    .line 11
    sget v3, Lnet/kaki87/soul2/testing/R$id;->item_seek_text:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x2

    .line 20
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v10, -0x1

    .line 27
    const/4 v11, 0x0

    .line 28
    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/high16 v12, 0x3f800000    # 1.0f

    .line 32
    .line 33
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 34
    .line 35
    invoke-static {v5, v8, v9, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    const/4 v13, -0x2

    .line 40
    invoke-virtual {v8, v9, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 41
    .line 42
    .line 43
    const/high16 v14, 0x42500000    # 52.0f

    .line 44
    .line 45
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    float-to-int v14, v14

    .line 50
    new-instance v15, Lcom/mycompany/app/view/MyLineFrame;

    .line 51
    .line 52
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 56
    .line 57
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 58
    .line 59
    invoke-virtual {v15, v12, v11, v7, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 60
    .line 61
    .line 62
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 63
    .line 64
    invoke-virtual {v15, v7}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v15, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 68
    .line 69
    .line 70
    const/high16 v7, 0x41800000    # 16.0f

    .line 71
    .line 72
    invoke-static {v1, v6, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    sget v4, Lnet/kaki87/soul2/testing/R$string;->setting:I

    .line 77
    .line 78
    invoke-static {v12, v4, v13, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const v13, 0x800013

    .line 83
    .line 84
    .line 85
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    .line 87
    invoke-virtual {v15, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    new-instance v4, Lcom/mycompany/app/view/MyButtonCheck;

    .line 91
    .line 92
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 98
    .line 99
    invoke-direct {v13, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    .line 101
    .line 102
    const v6, 0x800015

    .line 103
    .line 104
    .line 105
    iput v6, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    .line 107
    invoke-virtual {v15, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    .line 109
    .line 110
    new-instance v13, Lcom/mycompany/app/view/MyLineFrame;

    .line 111
    .line 112
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 116
    .line 117
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 118
    .line 119
    invoke-virtual {v13, v6, v11, v7, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 120
    .line 121
    .line 122
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 123
    .line 124
    invoke-virtual {v13, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v13, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    .line 129
    .line 130
    const/high16 v6, 0x41800000    # 16.0f

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v10, 0x1

    .line 134
    invoke-static {v1, v7, v10, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    sget v6, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 139
    .line 140
    const/4 v7, -0x2

    .line 141
    invoke-static {v11, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const v7, 0x800013

    .line 146
    .line 147
    .line 148
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    .line 150
    invoke-virtual {v13, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 154
    .line 155
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .line 160
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 161
    .line 162
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 163
    .line 164
    .line 165
    const v10, 0x800015

    .line 166
    .line 167
    .line 168
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 169
    .line 170
    invoke-virtual {v13, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .line 172
    .line 173
    new-instance v7, Lcom/mycompany/app/view/MyLineFrame;

    .line 174
    .line 175
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 179
    .line 180
    move-object/from16 v20, v6

    .line 181
    .line 182
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 183
    .line 184
    move-object/from16 v21, v11

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    invoke-virtual {v7, v10, v11, v6, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 188
    .line 189
    .line 190
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 191
    .line 192
    invoke-virtual {v7, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 193
    .line 194
    .line 195
    const/4 v6, -0x1

    .line 196
    invoke-virtual {v9, v7, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 197
    .line 198
    .line 199
    move-object/from16 v22, v13

    .line 200
    .line 201
    const/high16 v6, 0x41800000    # 16.0f

    .line 202
    .line 203
    const/4 v10, 0x0

    .line 204
    const/4 v11, 0x1

    .line 205
    invoke-static {v1, v10, v11, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    sget v6, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 210
    .line 211
    const/4 v10, -0x2

    .line 212
    invoke-static {v13, v6, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    const v10, 0x800013

    .line 217
    .line 218
    .line 219
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 220
    .line 221
    invoke-virtual {v7, v13, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .line 223
    .line 224
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 225
    .line 226
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 230
    .line 231
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 232
    .line 233
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .line 235
    .line 236
    const v11, 0x800015

    .line 237
    .line 238
    .line 239
    iput v11, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    .line 241
    invoke-virtual {v7, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    new-instance v10, Lcom/mycompany/app/view/MyLineFrame;

    .line 245
    .line 246
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 250
    .line 251
    move-object/from16 v23, v6

    .line 252
    .line 253
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 254
    .line 255
    move-object/from16 v24, v13

    .line 256
    .line 257
    const/4 v13, 0x0

    .line 258
    invoke-virtual {v10, v11, v13, v6, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 259
    .line 260
    .line 261
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 262
    .line 263
    invoke-virtual {v10, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 264
    .line 265
    .line 266
    const/4 v6, -0x1

    .line 267
    invoke-virtual {v9, v10, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v25, v7

    .line 271
    .line 272
    const/high16 v6, 0x41800000    # 16.0f

    .line 273
    .line 274
    const/4 v11, 0x0

    .line 275
    const/4 v13, 0x1

    .line 276
    invoke-static {v1, v11, v13, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    sget v6, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 281
    .line 282
    const/4 v11, -0x2

    .line 283
    invoke-static {v7, v6, v11, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    const v11, 0x800013

    .line 288
    .line 289
    .line 290
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 291
    .line 292
    invoke-virtual {v10, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    .line 294
    .line 295
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 296
    .line 297
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 298
    .line 299
    .line 300
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    .line 302
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 303
    .line 304
    invoke-direct {v11, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    .line 306
    .line 307
    const v13, 0x800015

    .line 308
    .line 309
    .line 310
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 311
    .line 312
    invoke-virtual {v10, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    .line 314
    .line 315
    new-instance v11, Lcom/mycompany/app/view/MyLineFrame;

    .line 316
    .line 317
    invoke-direct {v11, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 321
    .line 322
    move-object/from16 v26, v6

    .line 323
    .line 324
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 325
    .line 326
    move-object/from16 v27, v7

    .line 327
    .line 328
    const/4 v7, 0x0

    .line 329
    invoke-virtual {v11, v13, v7, v6, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 330
    .line 331
    .line 332
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 333
    .line 334
    invoke-virtual {v11, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 335
    .line 336
    .line 337
    const/4 v6, -0x1

    .line 338
    invoke-virtual {v9, v11, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v28, v10

    .line 342
    .line 343
    const/high16 v6, 0x41800000    # 16.0f

    .line 344
    .line 345
    const/4 v7, 0x0

    .line 346
    const/4 v13, 0x1

    .line 347
    invoke-static {v1, v7, v13, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    sget v6, Lnet/kaki87/soul2/testing/R$string;->tab_item:I

    .line 352
    .line 353
    const/4 v7, -0x2

    .line 354
    invoke-static {v10, v6, v7, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    const v7, 0x800013

    .line 359
    .line 360
    .line 361
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 362
    .line 363
    invoke-virtual {v11, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 367
    .line 368
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    .line 373
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 374
    .line 375
    invoke-direct {v7, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 376
    .line 377
    .line 378
    const v13, 0x800015

    .line 379
    .line 380
    .line 381
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 382
    .line 383
    invoke-virtual {v11, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    .line 385
    .line 386
    new-instance v7, Lcom/mycompany/app/view/MyRoundItem;

    .line 387
    .line 388
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 389
    .line 390
    .line 391
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 392
    .line 393
    move-object/from16 v17, v6

    .line 394
    .line 395
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 396
    .line 397
    move-object/from16 v18, v10

    .line 398
    .line 399
    const/4 v10, 0x0

    .line 400
    invoke-virtual {v7, v13, v10, v6, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 401
    .line 402
    .line 403
    const/4 v6, -0x1

    .line 404
    invoke-virtual {v9, v7, v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 405
    .line 406
    .line 407
    const/high16 v6, 0x41800000    # 16.0f

    .line 408
    .line 409
    const/4 v10, 0x0

    .line 410
    const/4 v13, 0x1

    .line 411
    invoke-static {v1, v10, v13, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 412
    .line 413
    .line 414
    move-result-object v14

    .line 415
    sget v6, Lnet/kaki87/soul2/testing/R$string;->password:I

    .line 416
    .line 417
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(I)V

    .line 418
    .line 419
    .line 420
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 421
    .line 422
    const/4 v10, -0x2

    .line 423
    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 424
    .line 425
    .line 426
    const/16 v10, 0xf

    .line 427
    .line 428
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v7, v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    .line 433
    .line 434
    new-instance v6, Lcom/mycompany/app/view/MyButtonCheck;

    .line 435
    .line 436
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 437
    .line 438
    .line 439
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 440
    .line 441
    move-object/from16 v29, v14

    .line 442
    .line 443
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 444
    .line 445
    invoke-direct {v13, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 449
    .line 450
    .line 451
    const/16 v14, 0x15

    .line 452
    .line 453
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    .line 458
    .line 459
    const/high16 v13, 0x42b00000    # 88.0f

    .line 460
    .line 461
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    float-to-int v13, v13

    .line 466
    const/high16 v14, 0x41400000    # 12.0f

    .line 467
    .line 468
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 469
    .line 470
    .line 471
    move-result v14

    .line 472
    float-to-int v14, v14

    .line 473
    const/high16 v10, 0x41200000    # 10.0f

    .line 474
    .line 475
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 476
    .line 477
    .line 478
    move-result v10

    .line 479
    float-to-int v10, v10

    .line 480
    move-object/from16 v31, v6

    .line 481
    .line 482
    new-instance v6, Lcom/mycompany/app/view/MyRoundItem;

    .line 483
    .line 484
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 485
    .line 486
    .line 487
    move-object/from16 v32, v7

    .line 488
    .line 489
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 490
    .line 491
    invoke-virtual {v6, v7, v14, v10, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 492
    .line 493
    .line 494
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 495
    .line 496
    const/4 v10, -0x1

    .line 497
    invoke-direct {v7, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 498
    .line 499
    .line 500
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 501
    .line 502
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 503
    .line 504
    invoke-virtual {v9, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    .line 506
    .line 507
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 508
    .line 509
    const/4 v10, 0x0

    .line 510
    invoke-direct {v7, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 511
    .line 512
    .line 513
    const/high16 v10, 0x41600000    # 14.0f

    .line 514
    .line 515
    move-object/from16 v33, v11

    .line 516
    .line 517
    const/4 v11, 0x1

    .line 518
    invoke-virtual {v7, v11, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 519
    .line 520
    .line 521
    sget v10, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 522
    .line 523
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 524
    .line 525
    .line 526
    const/4 v10, -0x2

    .line 527
    invoke-virtual {v6, v7, v10, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 528
    .line 529
    .line 530
    new-instance v10, Lcom/mycompany/app/view/MyEditText;

    .line 531
    .line 532
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 533
    .line 534
    .line 535
    move-object/from16 v35, v7

    .line 536
    .line 537
    const/16 v7, 0x10

    .line 538
    .line 539
    move-object/from16 v36, v4

    .line 540
    .line 541
    const/4 v4, 0x3

    .line 542
    invoke-static {v10, v7, v11, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 543
    .line 544
    .line 545
    const/high16 v7, 0x41800000    # 16.0f

    .line 546
    .line 547
    invoke-virtual {v10, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 548
    .line 549
    .line 550
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 551
    .line 552
    const/16 v11, 0x1d

    .line 553
    .line 554
    if-lt v7, v11, :cond_1

    .line 555
    .line 556
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 557
    .line 558
    invoke-virtual {v10, v7}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 559
    .line 560
    .line 561
    :cond_1
    const/high16 v7, 0x10000000

    .line 562
    .line 563
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 564
    .line 565
    .line 566
    const/4 v7, 0x0

    .line 567
    invoke-virtual {v10, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 568
    .line 569
    .line 570
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    .line 572
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 573
    .line 574
    const/4 v4, -0x1

    .line 575
    invoke-direct {v7, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 576
    .line 577
    .line 578
    const/16 v4, 0xc

    .line 579
    .line 580
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 581
    .line 582
    .line 583
    const/high16 v4, 0x40c00000    # 6.0f

    .line 584
    .line 585
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 586
    .line 587
    .line 588
    move-result v4

    .line 589
    float-to-int v4, v4

    .line 590
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v6, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    .line 595
    .line 596
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->d0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 597
    .line 598
    if-nez v4, :cond_2

    .line 599
    .line 600
    new-instance v4, Lcom/mycompany/app/view/MyLineRelative;

    .line 601
    .line 602
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineRelative;-><init>(Landroid/content/Context;)V

    .line 603
    .line 604
    .line 605
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 606
    .line 607
    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 608
    .line 609
    .line 610
    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 611
    .line 612
    invoke-virtual {v4, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 613
    .line 614
    .line 615
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 616
    .line 617
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyLineRelative;->c(I)V

    .line 618
    .line 619
    .line 620
    const/4 v7, -0x1

    .line 621
    const/4 v11, -0x2

    .line 622
    invoke-virtual {v9, v4, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 623
    .line 624
    .line 625
    new-instance v9, Landroid/widget/RelativeLayout;

    .line 626
    .line 627
    invoke-direct {v9, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 628
    .line 629
    .line 630
    move-object/from16 v37, v10

    .line 631
    .line 632
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 633
    .line 634
    invoke-direct {v10, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 635
    .line 636
    .line 637
    const/16 v7, 0xf

    .line 638
    .line 639
    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    .line 644
    .line 645
    const/high16 v7, 0x41600000    # 14.0f

    .line 646
    .line 647
    const/4 v10, 0x0

    .line 648
    const/4 v11, 0x1

    .line 649
    invoke-static {v1, v10, v2, v11, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->k(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    sget v11, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 654
    .line 655
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(I)V

    .line 656
    .line 657
    .line 658
    const/4 v11, -0x2

    .line 659
    invoke-virtual {v9, v7, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 660
    .line 661
    .line 662
    const/4 v11, 0x2

    .line 663
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 664
    .line 665
    .line 666
    move-result-object v11

    .line 667
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 668
    .line 669
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 670
    .line 671
    .line 672
    move-object/from16 v16, v4

    .line 673
    .line 674
    const/4 v4, 0x1

    .line 675
    const/high16 v10, 0x41800000    # 16.0f

    .line 676
    .line 677
    invoke-virtual {v11, v4, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 678
    .line 679
    .line 680
    const/4 v4, 0x3

    .line 681
    const/4 v10, -0x2

    .line 682
    invoke-static {v10, v10, v4, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 687
    .line 688
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 689
    .line 690
    invoke-virtual {v9, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    .line 692
    .line 693
    move-object v2, v7

    .line 694
    move-object/from16 v7, v16

    .line 695
    .line 696
    goto :goto_0

    .line 697
    :cond_2
    move-object/from16 v37, v10

    .line 698
    .line 699
    const/4 v2, 0x0

    .line 700
    const/4 v7, 0x0

    .line 701
    const/4 v11, 0x0

    .line 702
    :goto_0
    new-instance v4, Landroid/widget/FrameLayout;

    .line 703
    .line 704
    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 705
    .line 706
    .line 707
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 708
    .line 709
    const/4 v10, 0x0

    .line 710
    invoke-virtual {v4, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 711
    .line 712
    .line 713
    const/16 v9, 0x8

    .line 714
    .line 715
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 716
    .line 717
    .line 718
    const/4 v10, -0x1

    .line 719
    invoke-virtual {v5, v4, v10, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 720
    .line 721
    .line 722
    new-instance v9, Landroid/widget/RelativeLayout;

    .line 723
    .line 724
    invoke-direct {v9, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 725
    .line 726
    .line 727
    move-object/from16 v19, v11

    .line 728
    .line 729
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 730
    .line 731
    move-object/from16 v30, v2

    .line 732
    .line 733
    const/4 v2, -0x2

    .line 734
    invoke-direct {v11, v10, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 735
    .line 736
    .line 737
    const/16 v10, 0x10

    .line 738
    .line 739
    iput v10, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 740
    .line 741
    invoke-virtual {v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    .line 743
    .line 744
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 745
    .line 746
    const/4 v11, 0x0

    .line 747
    invoke-direct {v10, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v10, v3}, Landroid/view/View;->setId(I)V

    .line 751
    .line 752
    .line 753
    const/4 v2, 0x1

    .line 754
    const/high16 v11, 0x41800000    # 16.0f

    .line 755
    .line 756
    invoke-virtual {v10, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 757
    .line 758
    .line 759
    sget v2, Lnet/kaki87/soul2/testing/R$string;->size:I

    .line 760
    .line 761
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 762
    .line 763
    .line 764
    const/4 v11, -0x2

    .line 765
    invoke-virtual {v9, v10, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 766
    .line 767
    .line 768
    new-instance v2, Lcom/mycompany/app/view/MyProgressBar;

    .line 769
    .line 770
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 771
    .line 772
    .line 773
    move-object/from16 v34, v10

    .line 774
    .line 775
    const/4 v10, -0x1

    .line 776
    const/4 v11, 0x3

    .line 777
    invoke-static {v10, v14, v11, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 782
    .line 783
    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 784
    .line 785
    invoke-virtual {v9, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    .line 787
    .line 788
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 789
    .line 790
    const/4 v10, 0x0

    .line 791
    invoke-direct {v3, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 792
    .line 793
    .line 794
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 795
    .line 796
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 797
    .line 798
    .line 799
    const/16 v9, 0x11

    .line 800
    .line 801
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 802
    .line 803
    .line 804
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 805
    .line 806
    int-to-float v10, v10

    .line 807
    const/high16 v11, 0x3f800000    # 1.0f

    .line 808
    .line 809
    invoke-virtual {v3, v10, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 810
    .line 811
    .line 812
    const/high16 v10, 0x41800000    # 16.0f

    .line 813
    .line 814
    const/4 v11, 0x1

    .line 815
    invoke-virtual {v3, v11, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 819
    .line 820
    .line 821
    const/16 v13, 0x8

    .line 822
    .line 823
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 824
    .line 825
    .line 826
    const/4 v13, -0x1

    .line 827
    const/4 v14, -0x2

    .line 828
    invoke-virtual {v5, v3, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 829
    .line 830
    .line 831
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 832
    .line 833
    invoke-direct {v14, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v14, v11, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 840
    .line 841
    .line 842
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 843
    .line 844
    invoke-virtual {v14, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v14, v11}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 848
    .line 849
    .line 850
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 851
    .line 852
    invoke-virtual {v5, v14, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 853
    .line 854
    .line 855
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 856
    .line 857
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->f0:Landroidx/core/widget/NestedScrollView;

    .line 858
    .line 859
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 860
    .line 861
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 862
    .line 863
    move-object/from16 v1, v36

    .line 864
    .line 865
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 866
    .line 867
    move-object/from16 v1, v22

    .line 868
    .line 869
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 870
    .line 871
    move-object/from16 v1, v21

    .line 872
    .line 873
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 874
    .line 875
    move-object/from16 v1, v20

    .line 876
    .line 877
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 878
    .line 879
    move-object/from16 v1, v25

    .line 880
    .line 881
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->m0:Lcom/mycompany/app/view/MyLineFrame;

    .line 882
    .line 883
    move-object/from16 v1, v24

    .line 884
    .line 885
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 886
    .line 887
    move-object/from16 v1, v23

    .line 888
    .line 889
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 890
    .line 891
    move-object/from16 v1, v28

    .line 892
    .line 893
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 894
    .line 895
    move-object/from16 v1, v27

    .line 896
    .line 897
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 898
    .line 899
    move-object/from16 v1, v26

    .line 900
    .line 901
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 902
    .line 903
    move-object/from16 v1, v33

    .line 904
    .line 905
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->s0:Lcom/mycompany/app/view/MyLineFrame;

    .line 906
    .line 907
    move-object/from16 v1, v18

    .line 908
    .line 909
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 910
    .line 911
    move-object/from16 v1, v17

    .line 912
    .line 913
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 914
    .line 915
    move-object/from16 v1, v32

    .line 916
    .line 917
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 918
    .line 919
    move-object/from16 v1, v29

    .line 920
    .line 921
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 922
    .line 923
    move-object/from16 v1, v31

    .line 924
    .line 925
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 926
    .line 927
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->y0:Lcom/mycompany/app/view/MyRoundItem;

    .line 928
    .line 929
    move-object/from16 v1, v35

    .line 930
    .line 931
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 932
    .line 933
    move-object/from16 v1, v37

    .line 934
    .line 935
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 936
    .line 937
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 938
    .line 939
    move-object/from16 v7, v30

    .line 940
    .line 941
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 942
    .line 943
    move-object/from16 v11, v19

    .line 944
    .line 945
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 946
    .line 947
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->E0:Landroid/widget/FrameLayout;

    .line 948
    .line 949
    move-object/from16 v1, v34

    .line 950
    .line 951
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 952
    .line 953
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->G0:Lcom/mycompany/app/view/MyProgressBar;

    .line 954
    .line 955
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 956
    .line 957
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 958
    .line 959
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 960
    .line 961
    if-nez v1, :cond_3

    .line 962
    .line 963
    :goto_1
    return-void

    .line 964
    :cond_3
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogBackupSave;->Q(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    new-instance v2, Lcom/mycompany/app/dialog/DialogBackupSave$2;

    .line 965
    .line 966
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$2;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 970
    .line 971
    .line 972
    return-void
.end method


.method public static Q(Lcom/mycompany/app/dialog/DialogBackupSave;)V
    .locals 9

    if-nez p0, :cond_ok

    return-void

    :cond_ok
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->f0:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    if-eqz v0, :cond_done

    if-eqz v1, :cond_done

    if-nez v2, :cond_build

    goto :goto_done

    :cond_build
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-nez v4, :cond_ll

    goto :goto_done

    :cond_ll
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_idx

    goto :goto_done

    :cond_idx
    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    invoke-virtual {v5, v6, v3, v7, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v6

    sget v7, Lnet/kaki87/soul2/testing/R$string;->website_data:I

    const/4 v8, -0x2

    invoke-static {v6, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->d(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    const v8, 0x800013

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/mycompany/app/view/MyButtonCheck;

    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v8, 0x800015

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->a1:Lcom/mycompany/app/view/MyLineFrame;

    iput-object v6, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    :cond_done
    :goto_done
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogBackupSave;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 31
    .line 32
    sget v0, Lnet/kaki87/soul2/testing/R$string;->select_dir:I

    .line 33
    .line 34
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 57
    .line 58
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 59
    .line 60
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    array-length v2, v2

    .line 71
    const/16 v3, 0xc8

    .line 72
    .line 73
    if-le v2, v3, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 81
    .line 82
    sget v0, Lnet/kaki87/soul2/testing/R$string;->long_name:I

    .line 83
    .line 84
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 89
    .line 90
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 95
    .line 96
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 101
    .line 102
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 103
    .line 104
    if-nez v2, :cond_4

    .line 105
    .line 106
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 107
    .line 108
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 109
    .line 110
    if-nez v2, :cond_4

    .line 111
    .line 112
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 113
    .line 114
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 115
    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 119
    .line 120
    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 121
    .line 122
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v2, :cond_web_empty

    iget-boolean v2, v2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    if-nez v2, :cond_4

    :cond_web_empty
    .line 123
    .line 124
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 130
    .line 131
    sget v0, Lnet/kaki87/soul2/testing/R$string;->backup_target:I

    .line 132
    .line 133
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    const-string v2, ".dat"

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->d0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 148
    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 157
    .line 158
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/dialog/DialogBackupSave;->D(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 169
    .line 170
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->N0:Z

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogBackupSave;->L(Z)V

    .line 176
    .line 177
    .line 178
    new-instance v1, Lcom/mycompany/app/dialog/DialogBackupSave$20;

    .line 179
    .line 180
    invoke-direct {v1, p0, v0}, Lcom/mycompany/app/dialog/DialogBackupSave$20;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    :goto_0
    return-void
.end method

.method public static E(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "/"

    .line 9
    .line 10
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    :goto_0
    const/4 p0, 0x0

    .line 41
    return-object p0

    .line 42
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->T:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->S:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/mycompany/app/main/MainUtil;->V(Landroid/content/Context;ZZ)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    new-instance p2, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p2, p1, p0}, Lcom/mycompany/app/dialog/DialogBackupSave;->E(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object p0

    .line 45
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method


# virtual methods
.method public final D(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1
    iget v4, v2, Lcom/mycompany/app/dialog/DialogBackupSave;->a0:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-nez v0, :cond_0

    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_3e

    .line 2
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/mycompany/app/dialog/DialogBackupSave;->E(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    const-string v5, "/"

    .line 8
    invoke-static {v1, v5}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    new-instance v5, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 10
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {v5, v4}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    const-string v4, "DbAdsCmd.db"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v8, "_time"

    if-eqz v4, :cond_17

    .line 14
    sget-object v3, Lcom/mycompany/app/db/book/DbAdsCmd;->c:Lcom/mycompany/app/db/book/DbAdsCmd;

    .line 15
    const-string v3, "_rsv2"

    const-string v4, "_rsv1"

    const-string v9, "_doc"

    const-string v10, "_ele"

    const-string v11, "_host"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    :try_start_0
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbAdsCmd;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbAdsCmd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 17
    const-string v13, "DbAdsCmd_table"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v0, :cond_11

    .line 18
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 19
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 20
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 21
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 22
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/16 v16, 0x0

    .line 23
    :try_start_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 24
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    :goto_1
    if-nez v17, :cond_8

    .line 25
    :try_start_3
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    :try_start_4
    new-instance v5, Ljava/io/BufferedWriter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v20, v1

    :try_start_5
    new-instance v1, Ljava/io/OutputStreamWriter;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v21, v8

    :try_start_6
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v18, v2

    move-object/from16 v17, v5

    goto :goto_4

    :catch_0
    :goto_2
    move-object/from16 v18, v2

    goto :goto_4

    :catch_1
    :goto_3
    move-object/from16 v21, v8

    goto :goto_2

    :catch_2
    move-object/from16 v20, v1

    goto :goto_3

    :catch_3
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    :goto_4
    if-nez v17, :cond_7

    :goto_5
    const/4 v5, 0x0

    goto/16 :goto_d

    :cond_7
    :goto_6
    move-object/from16 v1, v17

    goto :goto_7

    :cond_8
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    goto :goto_6

    .line 27
    :goto_7
    :try_start_7
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_8

    .line 28
    :cond_9
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8

    .line 29
    :cond_a
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_8

    .line 30
    :cond_b
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    .line 31
    :cond_c
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_8

    .line 32
    :cond_d
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    move-object/from16 p3, v3

    .line 33
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v5, v21

    invoke-static {v1, v5, v2, v3}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-nez v2, :cond_f

    :goto_8
    move-object/from16 v17, v1

    goto :goto_5

    .line 34
    :cond_f
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-nez v2, :cond_10

    move-object/from16 v17, v1

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v17, v1

    move-object v8, v5

    move-object/from16 v1, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_4
    const/4 v5, 0x1

    goto :goto_c

    :catch_5
    :goto_9
    const/4 v5, 0x0

    goto :goto_c

    :catch_6
    move-object/from16 v20, v1

    :goto_a
    move-object/from16 v1, v16

    :goto_b
    move-object/from16 v18, v1

    goto :goto_9

    :catch_7
    move-object/from16 v20, v1

    const/16 v16, 0x0

    goto :goto_a

    :cond_11
    move-object/from16 v20, v1

    const/16 v16, 0x0

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    goto/16 :goto_5

    :catch_8
    move-object/from16 v20, v1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object v1, v0

    goto :goto_b

    :goto_c
    move-object/from16 v17, v1

    :goto_d
    if-eqz v0, :cond_12

    .line 35
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v17, :cond_13

    .line 36
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :cond_13
    if-eqz v18, :cond_14

    .line 37
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_14
    if-nez v5, :cond_16

    .line 38
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_15
    :goto_e
    move-object/from16 v6, v16

    goto/16 :goto_38

    :cond_16
    move-object/from16 v1, v20

    .line 40
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_17
    move-object v5, v8

    const/16 v16, 0x0

    .line 41
    const-string v2, "DbBookAds.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "_path"

    const-string v6, "_title"

    if-eqz v2, :cond_24

    .line 42
    sget-object v2, Lcom/mycompany/app/db/book/DbBookAds;->c:Lcom/mycompany/app/db/book/DbBookAds;

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_3e

    .line 44
    :cond_18
    :try_start_b
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 45
    const-string v8, "DbBookAds_table"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    if-eqz v0, :cond_1f

    .line 46
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 47
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 48
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 49
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    move-object/from16 v8, v16

    move-object v9, v8

    :cond_19
    if-nez v8, :cond_1a

    const/4 v10, 0x0

    .line 50
    :try_start_d
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 51
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    move-object v8, v10

    :catch_b
    if-nez v8, :cond_1a

    :catch_c
    :goto_f
    const/4 v5, 0x0

    goto :goto_12

    .line 52
    :cond_1a
    :try_start_e
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto :goto_10

    .line 53
    :cond_1b
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v4, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_10

    .line 54
    :cond_1c
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_10

    .line 55
    :cond_1d
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v5, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    if-nez v10, :cond_1e

    :goto_10
    goto :goto_f

    .line 56
    :cond_1e
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    if-nez v10, :cond_19

    :catch_d
    const/4 v5, 0x1

    goto :goto_12

    :catch_e
    :cond_1f
    move-object/from16 v8, v16

    :goto_11
    move-object v9, v8

    goto :goto_f

    :catch_f
    move-object/from16 v0, v16

    move-object v8, v0

    goto :goto_11

    :goto_12
    if-eqz v0, :cond_20

    .line 57
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_20
    if-eqz v8, :cond_21

    .line 58
    :try_start_10
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :cond_21
    if-eqz v9, :cond_22

    .line 59
    :try_start_11
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :cond_22
    if-nez v5, :cond_23

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 62
    :cond_23
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 63
    :cond_24
    const-string v2, "DbBookAgent.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "_text"

    if-eqz v2, :cond_30

    .line 64
    sget-object v2, Lcom/mycompany/app/db/book/DbBookAgent;->c:Lcom/mycompany/app/db/book/DbBookAgent;

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto/16 :goto_3e

    .line 66
    :cond_25
    :try_start_12
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookAgent;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 67
    const-string v9, "DbBookAgent_table"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_16

    if-eqz v0, :cond_2b

    .line 68
    :try_start_13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 69
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 70
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    move-object/from16 v4, v16

    move-object v5, v4

    :cond_26
    if-nez v4, :cond_27

    const/4 v10, 0x0

    .line 71
    :try_start_14
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v5

    .line 72
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    move-object v4, v8

    :catch_12
    if-nez v4, :cond_27

    :catch_13
    :goto_13
    const/16 v19, 0x0

    goto :goto_16

    .line 73
    :cond_27
    :try_start_15
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v8

    if-nez v8, :cond_28

    goto :goto_14

    .line 74
    :cond_28
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v8}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_29

    goto :goto_14

    .line 75
    :cond_29
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    if-nez v8, :cond_2a

    :goto_14
    goto :goto_13

    .line 76
    :cond_2a
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    if-nez v8, :cond_26

    :catch_14
    const/16 v19, 0x1

    goto :goto_16

    :catch_15
    :cond_2b
    move-object/from16 v4, v16

    :goto_15
    move-object v5, v4

    goto :goto_13

    :catch_16
    move-object/from16 v0, v16

    move-object v4, v0

    goto :goto_15

    :goto_16
    if-eqz v0, :cond_2c

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    if-eqz v4, :cond_2d

    .line 78
    :try_start_17
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :cond_2d
    if-eqz v5, :cond_2e

    .line 79
    :try_start_18
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :cond_2e
    if-nez v19, :cond_2f

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 82
    :cond_2f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 83
    :cond_30
    const-string v2, "DbBookBlock.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 84
    sget-object v2, Lcom/mycompany/app/db/book/DbBookBlock;->c:Lcom/mycompany/app/db/book/DbBookBlock;

    .line 85
    const-string v2, "_image"

    const-string v3, "_type"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_31

    goto/16 :goto_3e

    .line 86
    :cond_31
    :try_start_19
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 87
    const-string v7, "DbBookBlock_table"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1d

    if-eqz v0, :cond_39

    .line 88
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 89
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 90
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 91
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 92
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1c

    move-object/from16 v10, v16

    move-object v11, v10

    :cond_32
    if-nez v10, :cond_33

    const/4 v12, 0x0

    .line 93
    :try_start_1b
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v11

    .line 94
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v11, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    move-object v10, v12

    :catch_19
    if-nez v10, :cond_33

    :catch_1a
    :goto_17
    const/4 v5, 0x0

    goto :goto_1a

    .line 95
    :cond_33
    :try_start_1c
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v12

    if-nez v12, :cond_34

    goto :goto_18

    .line 96
    :cond_34
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v10, v3, v12}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_35

    goto :goto_18

    .line 97
    :cond_35
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v4, v12}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_36

    goto :goto_18

    .line 98
    :cond_36
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v2, v12}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_37

    goto :goto_18

    .line 99
    :cond_37
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v10, v5, v12, v13}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v12
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1a

    if-nez v12, :cond_38

    :goto_18
    goto :goto_17

    .line 100
    :cond_38
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1b

    if-nez v12, :cond_32

    :catch_1b
    const/4 v5, 0x1

    goto :goto_1a

    :catch_1c
    :cond_39
    move-object/from16 v10, v16

    :goto_19
    move-object v11, v10

    goto :goto_17

    :catch_1d
    move-object/from16 v0, v16

    move-object v10, v0

    goto :goto_19

    :goto_1a
    if-eqz v0, :cond_3a

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3a
    if-eqz v10, :cond_3b

    .line 102
    :try_start_1e
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_3b
    if-eqz v11, :cond_3c

    .line 103
    :try_start_1f
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_3c
    if-nez v5, :cond_3d

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 106
    :cond_3d
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 107
    :cond_3e
    const-string v2, "DbBookDc.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v8, "_name"

    if-eqz v2, :cond_4e

    .line 108
    sget-object v2, Lcom/mycompany/app/db/book/DbBookDc;->c:Lcom/mycompany/app/db/book/DbBookDc;

    .line 109
    const-string v2, "_isip"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto/16 :goto_3e

    .line 110
    :cond_3f
    :try_start_20
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 111
    const-string v10, "DbBookDc_table"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_25

    if-eqz v0, :cond_49

    .line 112
    :try_start_21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 113
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 114
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 115
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 116
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 117
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_24

    move-object/from16 v12, v16

    move-object v13, v12

    :cond_40
    if-nez v12, :cond_41

    const/4 v14, 0x0

    .line 118
    :try_start_22
    invoke-static {v1, v14}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v13

    .line 119
    new-instance v14, Ljava/io/BufferedWriter;

    new-instance v15, Ljava/io/OutputStreamWriter;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_20

    move-object/from16 p1, v12

    :try_start_23
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v13, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    move-object v12, v14

    goto :goto_1b

    :catch_20
    move-object/from16 p1, v12

    :catch_21
    move-object/from16 v12, p1

    :goto_1b
    if-nez v12, :cond_42

    :catch_22
    :goto_1c
    const/4 v5, 0x0

    goto :goto_1f

    :cond_41
    move-object/from16 p1, v12

    .line 120
    :cond_42
    :try_start_24
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v14

    if-nez v14, :cond_43

    goto :goto_1d

    .line 121
    :cond_43
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v12, v2, v14}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_44

    goto :goto_1d

    .line 122
    :cond_44
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v4, v14}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_45

    goto :goto_1d

    .line 123
    :cond_45
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v8, v14}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_46

    goto :goto_1d

    .line 124
    :cond_46
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v7, v14}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_47

    goto :goto_1d

    .line 125
    :cond_47
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v12, v5, v14, v15}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v14
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_22

    if-nez v14, :cond_48

    :goto_1d
    goto :goto_1c

    .line 126
    :cond_48
    :try_start_25
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_23

    if-nez v14, :cond_40

    :catch_23
    const/4 v5, 0x1

    goto :goto_1f

    :catch_24
    :cond_49
    move-object/from16 v12, v16

    :goto_1e
    move-object v13, v12

    goto :goto_1c

    :catch_25
    move-object/from16 v0, v16

    move-object v12, v0

    goto :goto_1e

    :goto_1f
    if-eqz v0, :cond_4a

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4a
    if-eqz v12, :cond_4b

    .line 128
    :try_start_26
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :cond_4b
    if-eqz v13, :cond_4c

    .line 129
    :try_start_27
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :cond_4c
    if-nez v5, :cond_4d

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 132
    :cond_4d
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 133
    :cond_4e
    const-string v2, "DbBookFilter.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 134
    sget-object v2, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 135
    const-string v2, "_use"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto/16 :goto_3e

    .line 136
    :cond_4f
    :try_start_28
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 137
    const-string v8, "DbBookFilter_table"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2c

    if-eqz v0, :cond_57

    .line 138
    :try_start_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 139
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 140
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 141
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 142
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_2b

    move-object/from16 v10, v16

    move-object v11, v10

    :cond_50
    if-nez v10, :cond_51

    const/4 v12, 0x0

    .line 143
    :try_start_2a
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v11

    .line 144
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v11, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_28

    move-object v10, v12

    :catch_28
    if-nez v10, :cond_51

    :catch_29
    :goto_20
    const/4 v5, 0x0

    goto :goto_23

    .line 145
    :cond_51
    :try_start_2b
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v12

    if-nez v12, :cond_52

    goto :goto_21

    .line 146
    :cond_52
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v4, v12}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_53

    goto :goto_21

    .line 147
    :cond_53
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v6, v12}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_54

    goto :goto_21

    .line 148
    :cond_54
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v10, v5, v12, v13}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v12

    if-nez v12, :cond_55

    goto :goto_21

    .line 149
    :cond_55
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v10, v2, v12}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    move-result v12
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_29

    if-nez v12, :cond_56

    :goto_21
    goto :goto_20

    .line 150
    :cond_56
    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2a

    if-nez v12, :cond_50

    :catch_2a
    const/4 v5, 0x1

    goto :goto_23

    :catch_2b
    :cond_57
    move-object/from16 v10, v16

    :goto_22
    move-object v11, v10

    goto :goto_20

    :catch_2c
    move-object/from16 v0, v16

    move-object v10, v0

    goto :goto_22

    :goto_23
    if-eqz v0, :cond_58

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_58
    if-eqz v10, :cond_59

    .line 152
    :try_start_2d
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_59
    if-eqz v11, :cond_5a

    .line 153
    :try_start_2e
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_5a
    if-nez v5, :cond_5b

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 156
    :cond_5b
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 157
    :cond_5c
    const-string v2, "DbBookJava.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 158
    sget-object v2, Lcom/mycompany/app/db/book/DbBookJava;->c:Lcom/mycompany/app/db/book/DbBookJava;

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto/16 :goto_3e

    .line 160
    :cond_5d
    :try_start_2f
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 161
    const-string v8, "DbBookJava_table"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_33

    if-eqz v0, :cond_64

    .line 162
    :try_start_30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 163
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 164
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 165
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_32

    move-object/from16 v8, v16

    move-object v9, v8

    :cond_5e
    if-nez v8, :cond_5f

    const/4 v12, 0x0

    .line 166
    :try_start_31
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 167
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_2f

    move-object v8, v10

    :catch_2f
    if-nez v8, :cond_5f

    :catch_30
    :goto_24
    const/4 v5, 0x0

    goto :goto_27

    .line 168
    :cond_5f
    :try_start_32
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_60

    goto :goto_25

    .line 169
    :cond_60
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v4, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_61

    goto :goto_25

    .line 170
    :cond_61
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_62

    goto :goto_25

    .line 171
    :cond_62
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v5, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v10
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_30

    if-nez v10, :cond_63

    :goto_25
    goto :goto_24

    .line 172
    :cond_63
    :try_start_33
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_31

    if-nez v10, :cond_5e

    :catch_31
    const/4 v5, 0x1

    goto :goto_27

    :catch_32
    :cond_64
    move-object/from16 v8, v16

    :goto_26
    move-object v9, v8

    goto :goto_24

    :catch_33
    move-object/from16 v0, v16

    move-object v8, v0

    goto :goto_26

    :goto_27
    if-eqz v0, :cond_65

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_65
    if-eqz v8, :cond_66

    .line 174
    :try_start_34
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :cond_66
    if-eqz v9, :cond_67

    .line 175
    :try_start_35
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :cond_67
    if-nez v5, :cond_68

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 178
    :cond_68
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 179
    :cond_69
    const-string v2, "DbBookLink.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 180
    sget-object v2, Lcom/mycompany/app/db/book/DbBookLink;->c:Lcom/mycompany/app/db/book/DbBookLink;

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto/16 :goto_3e

    .line 182
    :cond_6a
    :try_start_36
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 183
    const-string v8, "DbBookLink_table"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_3a

    if-eqz v0, :cond_71

    .line 184
    :try_start_37
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 185
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 186
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 187
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_39

    move-object/from16 v8, v16

    move-object v9, v8

    :cond_6b
    if-nez v8, :cond_6c

    const/4 v12, 0x0

    .line 188
    :try_start_38
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 189
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_36

    move-object v8, v10

    :catch_36
    if-nez v8, :cond_6c

    :catch_37
    :goto_28
    const/4 v5, 0x0

    goto :goto_2b

    .line 190
    :cond_6c
    :try_start_39
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_6d

    goto :goto_29

    .line 191
    :cond_6d
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v4, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6e

    goto :goto_29

    .line 192
    :cond_6e
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6f

    goto :goto_29

    .line 193
    :cond_6f
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v5, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v10
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_37

    if-nez v10, :cond_70

    :goto_29
    goto :goto_28

    .line 194
    :cond_70
    :try_start_3a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_38

    if-nez v10, :cond_6b

    :catch_38
    const/4 v5, 0x1

    goto :goto_2b

    :catch_39
    :cond_71
    move-object/from16 v8, v16

    :goto_2a
    move-object v9, v8

    goto :goto_28

    :catch_3a
    move-object/from16 v0, v16

    move-object v8, v0

    goto :goto_2a

    :goto_2b
    if-eqz v0, :cond_72

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_72
    if-eqz v8, :cond_73

    .line 196
    :try_start_3b
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_73
    if-eqz v9, :cond_74

    .line 197
    :try_start_3c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_74
    if-nez v5, :cond_75

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 200
    :cond_75
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 201
    :cond_76
    const-string v2, "DbBookLocale.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 202
    sget-object v2, Lcom/mycompany/app/db/book/DbBookLocale;->c:Lcom/mycompany/app/db/book/DbBookLocale;

    .line 203
    const-string v2, "_index"

    const-string v3, "_code"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_77

    goto/16 :goto_3e

    .line 204
    :cond_77
    :try_start_3d
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookLocale;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 205
    const-string v10, "DbBookLocale_table"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_41

    if-eqz v0, :cond_7e

    .line 206
    :try_start_3e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 207
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 208
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 209
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_40

    move-object/from16 v7, v16

    move-object v9, v7

    :cond_78
    if-nez v7, :cond_79

    const/4 v12, 0x0

    .line 210
    :try_start_3f
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 211
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_3d

    move-object v7, v10

    :catch_3d
    if-nez v7, :cond_79

    :catch_3e
    :goto_2c
    const/4 v5, 0x0

    goto :goto_2f

    .line 212
    :cond_79
    :try_start_40
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_7a

    goto :goto_2d

    .line 213
    :cond_7a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v3, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7b

    goto :goto_2d

    .line 214
    :cond_7b
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v7, v2, v10}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_7c

    goto :goto_2d

    .line 215
    :cond_7c
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_3e

    if-nez v10, :cond_7d

    :goto_2d
    goto :goto_2c

    .line 216
    :cond_7d
    :try_start_41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_3f

    if-nez v10, :cond_78

    :catch_3f
    const/4 v5, 0x1

    goto :goto_2f

    :catch_40
    :cond_7e
    move-object/from16 v7, v16

    :goto_2e
    move-object v9, v7

    goto :goto_2c

    :catch_41
    move-object/from16 v0, v16

    move-object v7, v0

    goto :goto_2e

    :goto_2f
    if-eqz v0, :cond_7f

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7f
    if-eqz v7, :cond_80

    .line 218
    :try_start_42
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :cond_80
    if-eqz v9, :cond_81

    .line 219
    :try_start_43
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :cond_81
    if-nez v5, :cond_82

    .line 220
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 222
    :cond_82
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 223
    :cond_83
    const-string v2, "DbBookMemo.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 224
    sget-object v2, Lcom/mycompany/app/db/book/DbBookMemo;->c:Lcom/mycompany/app/db/book/DbBookMemo;

    .line 225
    const-string v2, "_order"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_84

    goto/16 :goto_3e

    .line 226
    :cond_84
    :try_start_44
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 227
    const-string v9, "DbBookMemo_table"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_48

    if-eqz v0, :cond_8b

    .line 228
    :try_start_45
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 229
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 230
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 231
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_47

    move-object/from16 v8, v16

    move-object v9, v8

    :cond_85
    if-nez v8, :cond_86

    const/4 v12, 0x0

    .line 232
    :try_start_46
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 233
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_44

    move-object v8, v10

    :catch_44
    if-nez v8, :cond_86

    :catch_45
    :goto_30
    const/4 v5, 0x0

    goto :goto_33

    .line 234
    :cond_86
    :try_start_47
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_87

    goto :goto_31

    .line 235
    :cond_87
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v7, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_88

    goto :goto_31

    .line 236
    :cond_88
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v5, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v10

    if-nez v10, :cond_89

    goto :goto_31

    .line 237
    :cond_89
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v8, v2, v10}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    move-result v10
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_45

    if-nez v10, :cond_8a

    :goto_31
    goto :goto_30

    .line 238
    :cond_8a
    :try_start_48
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_46

    if-nez v10, :cond_85

    :catch_46
    const/4 v5, 0x1

    goto :goto_33

    :catch_47
    :cond_8b
    move-object/from16 v8, v16

    :goto_32
    move-object v9, v8

    goto :goto_30

    :catch_48
    move-object/from16 v0, v16

    move-object v8, v0

    goto :goto_32

    :goto_33
    if-eqz v0, :cond_8c

    .line 239
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8c
    if-eqz v8, :cond_8d

    .line 240
    :try_start_49
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :cond_8d
    if-eqz v9, :cond_8e

    .line 241
    :try_start_4a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :cond_8e
    if-nez v5, :cond_8f

    .line 242
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 244
    :cond_8f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 245
    :cond_90
    const-string v2, "DbBookOver.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 246
    sget-object v2, Lcom/mycompany/app/db/book/DbBookOver;->c:Lcom/mycompany/app/db/book/DbBookOver;

    .line 247
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    goto/16 :goto_3e

    .line 248
    :cond_91
    :try_start_4b
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 249
    const-string v8, "DbBookOver_table"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_4f

    if-eqz v0, :cond_98

    .line 250
    :try_start_4c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 251
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 252
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 253
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_4e

    move-object/from16 v8, v16

    move-object v9, v8

    :cond_92
    if-nez v8, :cond_93

    const/4 v12, 0x0

    .line 254
    :try_start_4d
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 255
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_4b

    move-object v8, v10

    :catch_4b
    if-nez v8, :cond_93

    :catch_4c
    :goto_34
    const/4 v5, 0x0

    goto :goto_37

    .line 256
    :cond_93
    :try_start_4e
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_94

    goto :goto_35

    .line 257
    :cond_94
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v4, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_95

    goto :goto_35

    .line 258
    :cond_95
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_96

    goto :goto_35

    .line 259
    :cond_96
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v5, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v10
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_4c

    if-nez v10, :cond_97

    :goto_35
    goto :goto_34

    .line 260
    :cond_97
    :try_start_4f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_4d

    if-nez v10, :cond_92

    :catch_4d
    const/4 v5, 0x1

    goto :goto_37

    :catch_4e
    :cond_98
    move-object/from16 v8, v16

    :goto_36
    move-object v9, v8

    goto :goto_34

    :catch_4f
    move-object/from16 v0, v16

    move-object v8, v0

    goto :goto_36

    :goto_37
    if-eqz v0, :cond_99

    .line 261
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_99
    if-eqz v8, :cond_9a

    .line 262
    :try_start_50
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :cond_9a
    if-eqz v9, :cond_9b

    .line 263
    :try_start_51
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :cond_9b
    if-nez v5, :cond_9c

    .line 264
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    .line 266
    :cond_9c
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_38
    return-object v6

    .line 267
    :cond_9d
    const-string v2, "DbBookPop.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 268
    sget-object v2, Lcom/mycompany/app/db/book/DbBookPop;->c:Lcom/mycompany/app/db/book/DbBookPop;

    .line 269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9e

    return-object v16

    .line 270
    :cond_9e
    :try_start_52
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookPop;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPop;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 271
    const-string v8, "DbBookPop_table"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_56

    if-eqz v0, :cond_a6

    .line 272
    :try_start_53
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 273
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 274
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 275
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_55

    move-object/from16 v8, v16

    move-object v9, v8

    :cond_9f
    if-nez v8, :cond_a0

    const/4 v12, 0x0

    .line 276
    :try_start_54
    invoke-static {v1, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v9

    .line 277
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v9, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_52

    move-object v8, v10

    :catch_52
    if-nez v8, :cond_a1

    :catch_53
    :goto_39
    move v5, v12

    goto :goto_3c

    :cond_a0
    const/4 v12, 0x0

    .line 278
    :cond_a1
    :try_start_55
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    move-result v10

    if-nez v10, :cond_a2

    goto :goto_3a

    .line 279
    :cond_a2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v4, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a3

    goto :goto_3a

    .line 280
    :cond_a3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v6, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a4

    goto :goto_3a

    .line 281
    :cond_a4
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v8, v5, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    move-result v10
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_53

    if-nez v10, :cond_a5

    :goto_3a
    goto :goto_39

    .line 282
    :cond_a5
    :try_start_56
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_54

    if-nez v10, :cond_9f

    :catch_54
    const/4 v5, 0x1

    goto :goto_3c

    :catch_55
    :cond_a6
    const/4 v12, 0x0

    move v5, v12

    move-object/from16 v8, v16

    :goto_3b
    move-object v9, v8

    goto :goto_3c

    :catch_56
    const/4 v12, 0x0

    move v5, v12

    move-object/from16 v0, v16

    move-object v8, v0

    goto :goto_3b

    :goto_3c
    if-eqz v0, :cond_a7

    .line 283
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a7
    if-eqz v8, :cond_a8

    .line 284
    :try_start_57
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :cond_a8
    if-eqz v9, :cond_a9

    .line 285
    :try_start_58
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :cond_a9
    if-nez v5, :cond_ab

    .line 286
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_aa
    move-object/from16 v6, v16

    goto :goto_3d

    .line 288
    :cond_ab
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_3d
    return-object v6

    .line 289
    :cond_ac
    const-string v2, "DbBookRecent.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 290
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookRecent;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 291
    :cond_ad
    const-string v2, "DbBookScript.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 292
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookScript;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 293
    :cond_ae
    const-string v2, "DbBookSearch.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 294
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookSearch;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 295
    :cond_af
    const-string v2, "DbBookTmem.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 296
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookTmem;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 297
    :cond_b0
    const-string v2, "DbBookTrans.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 298
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookTrans;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 299
    :cond_b1
    const-string v2, "DbBookUser.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 300
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookUser;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 301
    :cond_b2
    const-string v2, "DbRecentLang.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 302
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbRecentLang;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 303
    :cond_b3
    const-string v2, "DbBookHistory.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 304
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookHistory;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 305
    :cond_b4
    const-string v2, "DbBookIcon.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 306
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookIcon;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 307
    :cond_b5
    const-string v2, "DbBookPass.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 308
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookPass;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 309
    :cond_b6
    const-string v2, "DbBookQuick.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 310
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookQuick;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 311
    :cond_b7
    const-string v2, "DbBookTab3.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 312
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookTab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 313
    :cond_b8
    const-string v2, "DbBookWeb.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 314
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookWeb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 315
    :cond_b9
    const-string v2, "DbTabState.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 316
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbTabState;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 317
    :cond_ba
    const-string v2, "DbTabThumb.db"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 318
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbTabThumb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_bb
    :goto_3e
    return-object v16
.end method

.method public final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->T0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->T0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->O0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogBackupSave;->L(Z)V

    .line 12
    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogBackupSave;->M(I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogBackupSave;->K(Z)V

    .line 21
    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->O0:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iput-boolean v0, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBackupSave;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final K(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 12
    .line 13
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const v0, -0x50506

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const v0, -0xe19938

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 29
    .line 30
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const v0, -0x7f7f80

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    const v0, -0x252526

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final L(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2, v1, p1, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final M(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->E0:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final N()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->H0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->I0:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iput v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->I0:I

    .line 11
    .line 12
    if-ge v1, v0, :cond_2

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->J0:J

    .line 19
    .line 20
    sub-long v2, v0, v2

    .line 21
    .line 22
    const-wide/16 v4, 0xc8

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-gez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->J0:J

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->U0:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final O(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    sput-object p1, Lcom/mycompany/app/pref/PrefPath;->r:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Lcom/mycompany/app/dialog/DialogBackupSave$19;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogBackupSave$19;-><init>(Lcom/mycompany/app/dialog/DialogBackupSave;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final P(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/core/ZipFile;->h(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, v0, Lnet/lingala/zip4j/core/ZipFile;->e:Lnet/lingala/zip4j/progress/ProgressMonitor;

    .line 20
    .line 21
    new-instance v2, Lnet/lingala/zip4j/model/ZipParameters;

    .line 22
    .line 23
    invoke-direct {v2}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->c:I

    .line 29
    .line 30
    const/4 v3, 0x5

    .line 31
    iput v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->f:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    iput-boolean v3, v2, Lnet/lingala/zip4j/model/ZipParameters;->g:Z

    .line 35
    .line 36
    iput v1, v2, Lnet/lingala/zip4j/model/ZipParameters;->h:I

    .line 37
    .line 38
    iget v4, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->a0:I

    .line 39
    .line 40
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->D2(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iput-object v4, v2, Lnet/lingala/zip4j/model/ZipParameters;->i:[C

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0, p1, v2}, Lnet/lingala/zip4j/core/ZipFile;->a(Ljava/util/ArrayList;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iget p1, p2, Lnet/lingala/zip4j/progress/ProgressMonitor;->d:I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    const/4 p2, 0x2

    .line 61
    if-eq p1, p2, :cond_2

    .line 62
    .line 63
    return v3

    .line 64
    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBackupSave;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->M0:Lcom/mycompany/app/dialog/DialogBackupSave$DialogTask;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBackupSave;->G()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->S0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 32
    .line 33
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 41
    .line 42
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->g0:Lcom/mycompany/app/view/MyLineFrame;

    .line 50
    .line 51
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->i0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 59
    .line 60
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->j0:Lcom/mycompany/app/view/MyLineFrame;

    .line 68
    .line 69
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 70
    .line 71
    if-eqz v1, :cond_7

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 77
    .line 78
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->m0:Lcom/mycompany/app/view/MyLineFrame;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->m0:Lcom/mycompany/app/view/MyLineFrame;

    .line 86
    .line 87
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 88
    .line 89
    if-eqz v1, :cond_9

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 95
    .line 96
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 97
    .line 98
    if-eqz v1, :cond_a

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->p0:Lcom/mycompany/app/view/MyLineFrame;

    .line 104
    .line 105
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 106
    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->r0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 113
    .line 114
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->s0:Lcom/mycompany/app/view/MyLineFrame;

    .line 115
    .line 116
    if-eqz v1, :cond_c

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->s0:Lcom/mycompany/app/view/MyLineFrame;

    .line 122
    .line 123
    :cond_c
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 124
    .line 125
    if-eqz v1, :cond_d

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->u0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 131
    .line 132
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 133
    .line 134
    if-eqz v1, :cond_e

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 140
    .line 141
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 142
    .line 143
    if-eqz v1, :cond_f

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 146
    .line 147
    .line 148
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->x0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 149
    .line 150
    :cond_f
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v1, :cond_f_web

    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    :cond_f_web
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v1, :cond_f_web2

    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->a1:Lcom/mycompany/app/view/MyLineFrame;

    :cond_f_web2
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->y0:Lcom/mycompany/app/view/MyRoundItem;

    .line 151
    .line 152
    if-eqz v1, :cond_10

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->y0:Lcom/mycompany/app/view/MyRoundItem;

    .line 158
    .line 159
    :cond_10
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 160
    .line 161
    if-eqz v1, :cond_11

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->A0:Lcom/mycompany/app/view/MyEditText;

    .line 167
    .line 168
    :cond_11
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 169
    .line 170
    if-eqz v1, :cond_12

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 173
    .line 174
    .line 175
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->B0:Lcom/mycompany/app/view/MyLineRelative;

    .line 176
    .line 177
    :cond_12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->G0:Lcom/mycompany/app/view/MyProgressBar;

    .line 178
    .line 179
    if-eqz v1, :cond_13

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 182
    .line 183
    .line 184
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->G0:Lcom/mycompany/app/view/MyProgressBar;

    .line 185
    .line 186
    :cond_13
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->b0:Lcom/mycompany/app/setting/SettingBackup;

    .line 187
    .line 188
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->c0:Landroid/content/Context;

    .line 189
    .line 190
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->d0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->f0:Landroidx/core/widget/NestedScrollView;

    .line 193
    .line 194
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    .line 204
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 207
    .line 208
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->E0:Landroid/widget/FrameLayout;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->K0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 217
    .line 218
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->L0:Lcom/mycompany/app/view/MyLineText;

    .line 219
    .line 220
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->Q0:Ljava/util/ArrayList;

    .line 221
    .line 222
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupSave;->R0:Ljava/lang/String;

    .line 223
    .line 224
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 225
    .line 226
    .line 227
    return-void
.end method
