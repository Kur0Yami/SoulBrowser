.class public Lcom/mycompany/app/dialog/DialogEditVpn;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;
    }
.end annotation


# static fields
.field public static final synthetic t0:I


# instance fields
.field public a0:Landroid/app/Activity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyButtonImage;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Landroidx/appcompat/widget/AppCompatTextView;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:[Lcom/mycompany/app/view/MyEditText;

.field public l0:Lcom/mycompany/app/view/MyLineText;

.field public m0:Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

.field public n0:Ljava/net/HttpURLConnection;

.field public o0:Z

.field public p0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public q0:Z

.field public r0:Ljava/lang/String;

.field public s0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->a0:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditVpn$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditVpn$1;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditVpn;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->H(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "https://dns.google/resolve?name="

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    const-string p1, "&type=AAAA"

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string p1, "&type=A"

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->n0:Ljava/net/HttpURLConnection;

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 61
    .line 62
    if-nez p2, :cond_4

    .line 63
    .line 64
    :goto_1
    return-object v1

    .line 65
    :cond_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    .line 70
    .line 71
    new-instance v2, Ljava/io/InputStreamReader;

    .line 72
    .line 73
    const-string v3, "UTF-8"

    .line 74
    .line 75
    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .line 80
    .line 81
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 93
    .line 94
    if-nez v4, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 112
    goto :goto_6

    .line 113
    :catch_0
    move-object p2, v1

    .line 114
    goto :goto_4

    .line 115
    :catch_1
    move-object p2, v1

    .line 116
    goto :goto_5

    .line 117
    :catch_2
    move-object p1, v1

    .line 118
    move-object p2, p1

    .line 119
    goto :goto_4

    .line 120
    :catch_3
    move-object p1, v1

    .line 121
    move-object p2, p1

    .line 122
    goto :goto_5

    .line 123
    :catch_4
    :goto_4
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->o0:Z

    .line 124
    .line 125
    :catch_5
    :goto_5
    move-object v2, v1

    .line 126
    :goto_6
    if-eqz p2, :cond_8

    .line 127
    .line 128
    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 129
    .line 130
    .line 131
    :catch_6
    :cond_8
    if-eqz p1, :cond_9

    .line 132
    .line 133
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 134
    .line 135
    .line 136
    :catch_7
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->H(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 140
    .line 141
    if-nez p0, :cond_a

    .line 142
    .line 143
    goto :goto_d

    .line 144
    :cond_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-eqz p0, :cond_b

    .line 149
    .line 150
    goto :goto_d

    .line 151
    :cond_b
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->B0(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    if-nez p0, :cond_c

    .line 160
    .line 161
    goto :goto_d

    .line 162
    :cond_c
    :try_start_5
    const-string p1, "Answer"

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 165
    .line 166
    .line 167
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 168
    goto :goto_7

    .line 169
    :catch_8
    move-object p0, v1

    .line 170
    :goto_7
    if-nez p0, :cond_d

    .line 171
    .line 172
    goto :goto_d

    .line 173
    :cond_d
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 174
    .line 175
    .line 176
    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 177
    const/4 p2, 0x0

    .line 178
    move-object v2, v1

    .line 179
    :goto_8
    if-ge p2, p1, :cond_f

    .line 180
    .line 181
    :try_start_7
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    const-string v4, "data"

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 191
    goto :goto_9

    .line 192
    :catch_9
    move-object v3, v1

    .line 193
    :goto_9
    :try_start_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_e

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_e
    if-nez v2, :cond_10

    .line 201
    .line 202
    new-instance v4, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    move-object v2, v4

    .line 208
    goto :goto_b

    .line 209
    :catch_a
    :cond_f
    :goto_a
    move-object v1, v2

    .line 210
    goto :goto_d

    .line 211
    :cond_10
    :goto_b
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 218
    if-le v3, v0, :cond_11

    .line 219
    .line 220
    goto :goto_a

    .line 221
    :cond_11
    :goto_c
    add-int/lit8 p2, p2, 0x1

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :catch_b
    :goto_d
    return-object v1
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogEditVpn;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v8, -0x1

    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/high16 v10, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 30
    .line 31
    invoke-static {v3, v6, v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->g(Lcom/mycompany/app/view/MyDialogLinear;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;I)Landroid/widget/LinearLayout;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v10, -0x2

    .line 36
    invoke-virtual {v6, v7, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    const/high16 v6, 0x41400000    # 12.0f

    .line 40
    .line 41
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    float-to-int v6, v6

    .line 46
    const/high16 v11, 0x42b00000    # 88.0f

    .line 47
    .line 48
    invoke-static {v1, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    float-to-int v11, v11

    .line 53
    new-instance v12, Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-direct {v12, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v12, v9, v6, v9, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v12, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 62
    .line 63
    .line 64
    const/high16 v13, 0x41600000    # 14.0f

    .line 65
    .line 66
    invoke-static {v1, v4, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {v15, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    move/from16 v16, v9

    .line 76
    .line 77
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 78
    .line 79
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 80
    .line 81
    .line 82
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 83
    .line 84
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v12, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    new-instance v9, Lcom/mycompany/app/view/MyEditText;

    .line 91
    .line 92
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const/16 v15, 0x10

    .line 96
    .line 97
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 101
    .line 102
    .line 103
    const/4 v5, 0x3

    .line 104
    invoke-virtual {v9, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 105
    .line 106
    .line 107
    const/high16 v5, 0x41800000    # 16.0f

    .line 108
    .line 109
    invoke-virtual {v9, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    .line 111
    .line 112
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    const/16 v10, 0x1d

    .line 115
    .line 116
    if-lt v5, v10, :cond_1

    .line 117
    .line 118
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 121
    .line 122
    .line 123
    :cond_1
    const v10, -0x7e7e7f

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setInputType(I)V

    .line 130
    .line 131
    .line 132
    const/high16 v15, 0x10000000

    .line 133
    .line 134
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v9, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    .line 142
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 143
    .line 144
    invoke-direct {v15, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .line 146
    .line 147
    const v10, 0x800053

    .line 148
    .line 149
    .line 150
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 151
    .line 152
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 153
    .line 154
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 155
    .line 156
    .line 157
    sget v10, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 158
    .line 159
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v12, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    invoke-direct {v10, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 171
    .line 172
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    .line 174
    .line 175
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    .line 177
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 178
    .line 179
    invoke-direct {v15, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    const v2, 0x800055

    .line 183
    .line 184
    .line 185
    iput v2, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    .line 187
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 188
    .line 189
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    .line 194
    .line 195
    new-instance v2, Landroid/widget/FrameLayout;

    .line 196
    .line 197
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 201
    .line 202
    invoke-virtual {v2, v12, v6, v12, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v2, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 206
    .line 207
    .line 208
    const/4 v12, 0x1

    .line 209
    invoke-static {v1, v4, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    const/4 v13, -0x2

    .line 214
    invoke-virtual {v2, v15, v13, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 215
    .line 216
    .line 217
    new-instance v13, Lcom/mycompany/app/view/MyEditText;

    .line 218
    .line 219
    invoke-direct {v13, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    const/16 v8, 0x11

    .line 223
    .line 224
    const/4 v4, 0x3

    .line 225
    invoke-static {v13, v8, v12, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 226
    .line 227
    .line 228
    const/high16 v4, 0x41800000    # 16.0f

    .line 229
    .line 230
    invoke-virtual {v13, v12, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 231
    .line 232
    .line 233
    const/16 v4, 0x1d

    .line 234
    .line 235
    if-lt v5, v4, :cond_2

    .line 236
    .line 237
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 238
    .line 239
    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 240
    .line 241
    .line 242
    :cond_2
    const v4, -0x7e7e7f

    .line 243
    .line 244
    .line 245
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 246
    .line 247
    .line 248
    const/4 v4, 0x2

    .line 249
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 250
    .line 251
    .line 252
    const-string v4, "0123456789."

    .line 253
    .line 254
    invoke-static {v4}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 259
    .line 260
    .line 261
    const/high16 v12, 0x10000000

    .line 262
    .line 263
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 264
    .line 265
    .line 266
    const/4 v12, 0x0

    .line 267
    invoke-virtual {v13, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    .line 269
    .line 270
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 271
    .line 272
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 273
    .line 274
    move-object/from16 v20, v4

    .line 275
    .line 276
    const/4 v4, -0x1

    .line 277
    invoke-direct {v8, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 278
    .line 279
    .line 280
    const v12, 0x800053

    .line 281
    .line 282
    .line 283
    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 284
    .line 285
    invoke-virtual {v2, v13, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    .line 287
    .line 288
    new-instance v2, Landroid/widget/FrameLayout;

    .line 289
    .line 290
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 291
    .line 292
    .line 293
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 294
    .line 295
    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7, v2, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v21, v9

    .line 302
    .line 303
    const/high16 v4, 0x41600000    # 14.0f

    .line 304
    .line 305
    const/4 v8, 0x1

    .line 306
    const/4 v12, 0x0

    .line 307
    invoke-static {v1, v12, v8, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    const/4 v4, -0x2

    .line 312
    invoke-virtual {v2, v9, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 313
    .line 314
    .line 315
    new-instance v4, Lcom/mycompany/app/view/MyEditText;

    .line 316
    .line 317
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    move-object/from16 v22, v13

    .line 321
    .line 322
    const/16 v12, 0x11

    .line 323
    .line 324
    const/4 v13, 0x3

    .line 325
    invoke-static {v4, v12, v8, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 326
    .line 327
    .line 328
    const/high16 v12, 0x41800000    # 16.0f

    .line 329
    .line 330
    invoke-virtual {v4, v8, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 331
    .line 332
    .line 333
    const/16 v8, 0x1d

    .line 334
    .line 335
    if-lt v5, v8, :cond_3

    .line 336
    .line 337
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 338
    .line 339
    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 340
    .line 341
    .line 342
    :cond_3
    const v8, -0x7e7e7f

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 346
    .line 347
    .line 348
    const/4 v8, 0x2

    .line 349
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 350
    .line 351
    .line 352
    invoke-static/range {v20 .. v20}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 357
    .line 358
    .line 359
    const/high16 v12, 0x10000000

    .line 360
    .line 361
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 362
    .line 363
    .line 364
    const/4 v12, 0x0

    .line 365
    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    .line 367
    .line 368
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 371
    .line 372
    const/4 v12, -0x1

    .line 373
    invoke-direct {v8, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 374
    .line 375
    .line 376
    const v13, 0x800053

    .line 377
    .line 378
    .line 379
    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 380
    .line 381
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    .line 383
    .line 384
    new-instance v2, Landroid/widget/FrameLayout;

    .line 385
    .line 386
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 390
    .line 391
    invoke-virtual {v2, v8, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7, v2, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 395
    .line 396
    .line 397
    move-object/from16 v20, v4

    .line 398
    .line 399
    const/high16 v8, 0x41600000    # 14.0f

    .line 400
    .line 401
    const/4 v12, 0x0

    .line 402
    const/4 v13, 0x1

    .line 403
    invoke-static {v1, v12, v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    const/4 v8, -0x2

    .line 408
    invoke-virtual {v2, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 409
    .line 410
    .line 411
    new-instance v8, Lcom/mycompany/app/view/MyEditText;

    .line 412
    .line 413
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v23, v4

    .line 417
    .line 418
    const/4 v4, 0x3

    .line 419
    const/16 v12, 0x11

    .line 420
    .line 421
    invoke-static {v8, v12, v13, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 422
    .line 423
    .line 424
    const/high16 v4, 0x41800000    # 16.0f

    .line 425
    .line 426
    invoke-virtual {v8, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 427
    .line 428
    .line 429
    const/16 v4, 0x1d

    .line 430
    .line 431
    if-lt v5, v4, :cond_4

    .line 432
    .line 433
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 434
    .line 435
    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 436
    .line 437
    .line 438
    :cond_4
    const v4, -0x7e7e7f

    .line 439
    .line 440
    .line 441
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 442
    .line 443
    .line 444
    const/16 v4, 0x10

    .line 445
    .line 446
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 447
    .line 448
    .line 449
    const/high16 v12, 0x10000000

    .line 450
    .line 451
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 452
    .line 453
    .line 454
    const/4 v12, 0x0

    .line 455
    invoke-virtual {v8, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 456
    .line 457
    .line 458
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 459
    .line 460
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 461
    .line 462
    const/4 v12, -0x1

    .line 463
    invoke-direct {v4, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 464
    .line 465
    .line 466
    const v13, 0x800053

    .line 467
    .line 468
    .line 469
    iput v13, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 470
    .line 471
    invoke-virtual {v2, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    .line 473
    .line 474
    new-instance v2, Landroid/widget/FrameLayout;

    .line 475
    .line 476
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 480
    .line 481
    invoke-virtual {v2, v4, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v7, v2, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 485
    .line 486
    .line 487
    const/high16 v4, 0x41600000    # 14.0f

    .line 488
    .line 489
    const/4 v12, 0x0

    .line 490
    const/4 v13, 0x1

    .line 491
    invoke-static {v1, v12, v13, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    const/4 v6, -0x2

    .line 496
    invoke-virtual {v2, v4, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 497
    .line 498
    .line 499
    new-instance v6, Lcom/mycompany/app/view/MyEditText;

    .line 500
    .line 501
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 502
    .line 503
    .line 504
    const/4 v7, 0x3

    .line 505
    const/16 v12, 0x11

    .line 506
    .line 507
    invoke-static {v6, v12, v13, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 508
    .line 509
    .line 510
    const/high16 v12, 0x41800000    # 16.0f

    .line 511
    .line 512
    invoke-virtual {v6, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 513
    .line 514
    .line 515
    const/16 v7, 0x1d

    .line 516
    .line 517
    if-lt v5, v7, :cond_5

    .line 518
    .line 519
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 520
    .line 521
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 522
    .line 523
    .line 524
    :cond_5
    const v5, -0x7e7e7f

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 528
    .line 529
    .line 530
    const/16 v5, 0x10

    .line 531
    .line 532
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 533
    .line 534
    .line 535
    const/high16 v12, 0x10000000

    .line 536
    .line 537
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 538
    .line 539
    .line 540
    const/4 v12, 0x0

    .line 541
    invoke-virtual {v6, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    .line 543
    .line 544
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 545
    .line 546
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 547
    .line 548
    const/4 v12, -0x1

    .line 549
    invoke-direct {v5, v12, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 550
    .line 551
    .line 552
    const v13, 0x800053

    .line 553
    .line 554
    .line 555
    iput v13, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 556
    .line 557
    invoke-virtual {v2, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    .line 559
    .line 560
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 561
    .line 562
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 563
    .line 564
    .line 565
    const/16 v12, 0x11

    .line 566
    .line 567
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 568
    .line 569
    .line 570
    const/high16 v12, 0x41800000    # 16.0f

    .line 571
    .line 572
    const/4 v13, 0x1

    .line 573
    invoke-virtual {v2, v13, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 574
    .line 575
    .line 576
    sget v1, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 577
    .line 578
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 579
    .line 580
    .line 581
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 582
    .line 583
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v13}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 587
    .line 588
    .line 589
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 590
    .line 591
    const/4 v12, -0x1

    .line 592
    invoke-virtual {v3, v2, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 593
    .line 594
    .line 595
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 596
    .line 597
    iput-object v14, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 598
    .line 599
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 600
    .line 601
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 602
    .line 603
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 604
    .line 605
    move-object/from16 v1, v23

    .line 606
    .line 607
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 608
    .line 609
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 610
    .line 611
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 612
    .line 613
    const/4 v1, 0x5

    .line 614
    new-array v1, v1, [Lcom/mycompany/app/view/MyEditText;

    .line 615
    .line 616
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 617
    .line 618
    aput-object v21, v1, v16

    .line 619
    .line 620
    const/16 v19, 0x1

    .line 621
    .line 622
    aput-object v22, v1, v19

    .line 623
    .line 624
    const/16 v17, 0x2

    .line 625
    .line 626
    aput-object v20, v1, v17

    .line 627
    .line 628
    const/16 v18, 0x3

    .line 629
    .line 630
    aput-object v8, v1, v18

    .line 631
    .line 632
    const/4 v2, 0x4

    .line 633
    aput-object v6, v1, v2

    .line 634
    .line 635
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 636
    .line 637
    if-nez v1, :cond_6

    .line 638
    .line 639
    :goto_0
    return-void

    .line 640
    :cond_6
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditVpn$2;

    .line 641
    .line 642
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditVpn$2;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    .line 647
    .line 648
    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    const/4 v3, 0x5

    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    aget-object v0, v0, v2

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v2, 0x1

    .line 18
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 38
    .line 39
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_2
    const-string v3, "https://"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    if-ne v3, v4, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/16 v3, 0x2f

    .line 61
    .line 62
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-gt v3, v4, :cond_4

    .line 67
    .line 68
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 74
    .line 75
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_4
    return-object v2

    .line 80
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 86
    .line 87
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    :cond_6
    :goto_1
    return-object v1
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->p0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->p0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F(Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x5

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    const-string v0, ","

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    array-length v0, p1

    .line 28
    const/4 v1, 0x4

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-ge v0, v1, :cond_5

    .line 35
    .line 36
    aget-object v2, p1, v0

    .line 37
    .line 38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_4

    .line 43
    .line 44
    const-string v3, "x"

    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 54
    .line 55
    add-int/lit8 v4, v0, 0x1

    .line 56
    .line 57
    aget-object v3, v3, v4

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 64
    .line 65
    add-int/lit8 v3, v0, 0x1

    .line 66
    .line 67
    aget-object v2, v2, v3

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    sget-boolean p1, Lcom/mycompany/app/pref/PrefTts;->C:Z

    .line 77
    .line 78
    if-eqz p1, :cond_8

    .line 79
    .line 80
    if-eqz p2, :cond_8

    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->a0:Landroid/app/Activity;

    .line 83
    .line 84
    if-nez p1, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->p0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 88
    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditVpn;->E()V

    .line 93
    .line 94
    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 101
    .line 102
    sget v0, Lnet/kaki87/soul2/testing/R$string;->vpn_ip_guide_1:I

    .line 103
    .line 104
    const-string v1, "\n"

    .line 105
    .line 106
    invoke-static {p2, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 110
    .line 111
    sget v0, Lnet/kaki87/soul2/testing/R$string;->vpn_ip_guide_2:I

    .line 112
    .line 113
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    new-instance p2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->a0:Landroid/app/Activity;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditVpn$8;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditVpn$8;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 131
    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    invoke-direct {p2, v0, p1, v2, v1}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 135
    .line 136
    .line 137
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->p0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 138
    .line 139
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditVpn$9;

    .line 140
    .line 141
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogEditVpn$9;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    :goto_3
    return-void
.end method

.method public final G(Landroid/view/View;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    const v4, -0xe19938

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const v4, -0x252526

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_2
    return-void
.end method

.method public final H(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->n0:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->n0:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->n0:Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->n0:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditVpn$7;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogEditVpn$7;-><init>(Ljava/net/HttpURLConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dismiss()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditVpn;->E()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogEditVpn;->H(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->m0:Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 21
    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->m0:Lcom/mycompany/app/dialog/DialogEditVpn$DialogTask;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 33
    .line 34
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 35
    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    array-length v3, v2

    .line 39
    :goto_0
    if-ge v0, v3, :cond_4

    .line 40
    .line 41
    aget-object v4, v2, v0

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 46
    .line 47
    .line 48
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 52
    .line 53
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 70
    .line 71
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->a0:Landroid/app/Activity;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->r0:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditVpn;->s0:Ljava/lang/String;

    .line 90
    .line 91
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
