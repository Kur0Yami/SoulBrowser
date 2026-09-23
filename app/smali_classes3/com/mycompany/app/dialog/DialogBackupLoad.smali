.class public Lcom/mycompany/app/dialog/DialogBackupLoad;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;,
        Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;,
        Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;
    }
.end annotation


# instance fields
.field public A0:I

.field public B0:I

.field public C0:J

.field public D0:Landroidx/appcompat/widget/AppCompatTextView;

.field public E0:Lcom/mycompany/app/view/MyLineText;

.field public F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

.field public G0:Z

.field public H0:Ljava/lang/String;

.field public I0:Ljava/lang/String;

.field public J0:Ljava/lang/String;

.field public K0:Z

.field public L0:Z

.field public M0:Z

.field public N0:Ljava/lang/String;

.field public O0:Ljava/lang/String;

.field public P0:Z

.field public Q0:Z

.field public R0:I

.field public final S0:Ljava/lang/Runnable;

.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

.field public c0:Lcom/mycompany/app/gdrive/GdriveManager;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/core/widget/NestedScrollView;

.field public f0:Lcom/mycompany/app/view/MyLineFrame;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Lcom/mycompany/app/view/MyButtonCheck;

.field public i0:Lcom/mycompany/app/view/MyLineFrame;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Lcom/mycompany/app/view/MyButtonCheck;

.field public l0:Lcom/mycompany/app/view/MyLineFrame;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Lcom/mycompany/app/view/MyButtonCheck;

.field public o0:Lcom/mycompany/app/view/MyLineFrame;

.field public p0:Landroidx/appcompat/widget/AppCompatTextView;

.field public q0:Lcom/mycompany/app/view/MyButtonCheck;

.field public r0:Lcom/mycompany/app/view/MyLineFrame;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Lcom/mycompany/app/view/MyButtonCheck;

.field public u0:Lcom/mycompany/app/view/MyRoundItem;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Lcom/mycompany/app/view/MyButtonCheck;

.field public a1:Lcom/mycompany/app/view/MyLineFrame;

.field public b1:Landroidx/appcompat/widget/AppCompatTextView;

.field public c1:Lcom/mycompany/app/view/MyButtonCheck;

.field public x0:Landroid/widget/FrameLayout;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Lcom/mycompany/app/view/MyProgressBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;Lcom/mycompany/app/gdrive/GdriveManager;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/dialog/DialogBackupLoad$19;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogBackupLoad$19;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->S0:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->H0:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogBackupLoad$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogBackupLoad$1;-><init>(Lcom/mycompany/app/dialog/DialogBackupLoad;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogBackupLoad;I)Z
    .locals 11

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->R1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_3

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_1
    new-instance v2, Lcom/mycompany/app/compress/CompressUtilZip;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-direct {v2, v0, v3, v4}, Lcom/mycompany/app/compress/Compress;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/mycompany/app/main/MainConst;->J:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, v2, Lcom/mycompany/app/compress/Compress;->f:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_j0_ready

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    const-string v7, "2"

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    :cond_j0_ready
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D2(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/mycompany/app/compress/Compress;->g:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/mycompany/app/compress/CompressUtilZip;->N()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_2
    iget p1, v2, Lcom/mycompany/app/compress/Compress;->j:I

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "2"

    .line 62
    .line 63
    invoke-static {p1, v0, v3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 68
    .line 69
    :cond_4
    new-instance p1, Ljava/io/File;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->y(Ljava/io/File;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_5
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, v2, Lcom/mycompany/app/compress/Compress;->b:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_6
    iget-object p1, v2, Lcom/mycompany/app/compress/CompressUtilZip;->m:Lcom/mycompany/app/compress/CompressUtilZip2;

    .line 100
    .line 101
    if-eqz p1, :cond_e

    .line 102
    .line 103
    iget-object v0, p1, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 104
    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_7
    :try_start_0
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->d()Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-object v0, v4

    .line 114
    :goto_0
    if-eqz v0, :cond_e

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_8

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    move v3, v1

    .line 128
    move v5, v3

    .line 129
    :catch_1
    :cond_9
    :goto_1
    if-ge v5, v2, :cond_c

    .line 130
    .line 131
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    check-cast v6, Lnet/lingala/zip4j/model/FileHeader;

    .line 138
    .line 139
    if-eqz v6, :cond_9

    .line 140
    .line 141
    :try_start_1
    iget-boolean v7, v6, Lnet/lingala/zip4j/model/FileHeader;->q:Z

    .line 142
    .line 143
    if-eqz v7, :cond_a

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v8, "/"

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v8, v6, Lnet/lingala/zip4j/model/FileHeader;->p:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v8, p1, Lcom/mycompany/app/compress/CompressUtilZip2;->a:Lnet/lingala/zip4j/core/ZipFile;

    .line 165
    .line 166
    invoke-virtual {v8, v6}, Lnet/lingala/zip4j/core/ZipFile;->e(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v7, v1}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/16 v7, 0x2000

    .line 179
    .line 180
    new-array v8, v7, [B

    .line 181
    .line 182
    :goto_2
    invoke-virtual {v6, v8, v1, v7}, Lnet/lingala/zip4j/io/ZipInputStream;->read([BII)I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    const/4 v10, -0x1

    .line 187
    if-eq v9, v10, :cond_b

    .line 188
    .line 189
    invoke-virtual {v4, v8, v1, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_b
    :try_start_close_out
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_close_out
    .catch Ljava/lang/Exception; {:try_start_close_out .. :try_end_close_out} :catch_close_out

    :catch_close_out
    :try_start_close_in
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_close_in
    .catch Ljava/lang/Exception; {:try_start_close_in .. :try_end_close_in} :catch_close_in

    :catch_close_in
    const/4 v3, 0x1

    .line 194
    goto :goto_1

    .line 195
    :cond_c
    if-eqz v4, :cond_d

    .line 196
    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    .line 199
    .line 200
    :catch_2
    :cond_d
    move v1, v3

    .line 201
    :cond_e
    :goto_3
    return v1
.end method


.method public static Q(Lcom/mycompany/app/dialog/DialogBackupLoad;)V
    .locals 9

    if-nez p0, :cond_ok

    return-void

    :cond_ok
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->e0:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->u0:Lcom/mycompany/app/view/MyRoundItem;

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

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a1:Lcom/mycompany/app/view/MyLineFrame;

    iput-object v6, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    :cond_done
    :goto_done
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogBackupLoad;Landroid/content/Context;[Ljava/io/File;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    goto/16 :goto_d

    .line 11
    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    const-string v3, ".back"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v3, ".pref"

    .line 18
    .line 19
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v5, "/"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v4, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    iget-boolean v4, v4, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 67
    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    iget-boolean v4, v4, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 71
    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    move v4, v7

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 v4, 0x0

    .line 77
    :goto_1
    if-eqz p3, :cond_4

    .line 78
    .line 79
    sget-object v8, Lcom/mycompany/app/dialog/DialogBackupSave;->W0:[Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    sget-object v8, Lcom/mycompany/app/dialog/DialogBackupSave;->V0:[Ljava/lang/String;

    .line 83
    .line 84
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    array-length v10, v8

    .line 90
    const/4 v11, 0x0

    .line 91
    :goto_3
    if-ge v11, v10, :cond_5

    .line 92
    .line 93
    aget-object v12, v8, v11

    .line 94
    .line 95
    new-instance v13, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 96
    .line 97
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v12, v13, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v14, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    .line 103
    .line 104
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14, v12}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    iput-object v12, v13, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v11, v11, 0x1

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    array-length v8, v2

    .line 120
    const/4 v10, 0x0

    .line 121
    :goto_4
    if-ge v10, v8, :cond_2a

    .line 122
    .line 123
    aget-object v11, v2, v10

    .line 124
    .line 125
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v13

    .line 133
    if-eqz v13, :cond_6

    .line 134
    .line 135
    :goto_5
    const/4 v12, 0x0

    .line 136
    goto/16 :goto_c

    .line 137
    .line 138
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    const/4 v14, 0x0

    .line 143
    :cond_7
    if-ge v14, v13, :cond_8

    .line 144
    .line 145
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    add-int/lit8 v14, v14, 0x1

    .line 150
    .line 151
    check-cast v15, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;

    .line 152
    .line 153
    iget-object v6, v15, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->b:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_7

    .line 160
    .line 161
    iget-object v6, v15, Lcom/mycompany/app/dialog/DialogBackupLoad$PrefName;->a:Ljava/lang/String;

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_8
    const/4 v6, 0x0

    .line 165
    :goto_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v12

    .line 169
    if-eqz v12, :cond_9

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_9
    invoke-static {v3, v5, v6}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    new-instance v13, Ljava/io/File;

    .line 177
    .line 178
    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-eqz v14, :cond_a

    .line 186
    .line 187
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 188
    .line 189
    .line 190
    :cond_a
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-static {v11, v12}, Lcom/mycompany/app/main/MainUtil;->u(Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    if-eqz p3, :cond_f

    .line 198
    .line 199
    const-string v11, "back.jpg"

    .line 200
    .line 201
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_b

    .line 206
    .line 207
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->P0:Z

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_b
    const-string v11, "nor_land.jpg"

    .line 211
    .line 212
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    if-eqz v11, :cond_c

    .line 217
    .line 218
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->P0:Z

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_c
    const-string v11, "sec_port.jpg"

    .line 222
    .line 223
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_d

    .line 228
    .line 229
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->Q0:Z

    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_d
    const-string v11, "sec_land.jpg"

    .line 233
    .line 234
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_e

    .line 239
    .line 240
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->Q0:Z

    .line 241
    .line 242
    :cond_e
    :goto_7
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_f
    const-string v11, "PrefSync"

    .line 247
    .line 248
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    if-eqz v11, :cond_12

    .line 253
    .line 254
    if-nez v4, :cond_10

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    goto :goto_8

    .line 258
    :cond_10
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefSync;->s(Landroid/content/Context;Z)V

    .line 259
    .line 260
    .line 261
    const/4 v11, 0x0

    .line 262
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    if-nez v6, :cond_11

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_11
    const-string v12, "mNormalIndex"

    .line 270
    .line 271
    invoke-virtual {v6, v11, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v12, "mSecretIndex"

    .line 275
    .line 276
    invoke-virtual {v6, v11, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 280
    .line 281
    .line 282
    :goto_8
    move v12, v11

    .line 283
    goto/16 :goto_b

    .line 284
    .line 285
    :cond_12
    const/4 v11, 0x0

    .line 286
    const-string v12, "PrefImage"

    .line 287
    .line 288
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    if-eqz v12, :cond_14

    .line 293
    .line 294
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefImage;->s(Landroid/content/Context;Z)V

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefImage;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefImage;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    if-nez v6, :cond_13

    .line 302
    .line 303
    goto :goto_8

    .line 304
    :cond_13
    const-string v12, "mIndex"

    .line 305
    .line 306
    sget v13, Lcom/mycompany/app/pref/PrefImage;->k:I

    .line 307
    .line 308
    invoke-virtual {v6, v13, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string v12, "mPage"

    .line 312
    .line 313
    invoke-virtual {v6, v11, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_14
    const-string v12, "PrefMain"

    .line 321
    .line 322
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-eqz v12, :cond_16

    .line 327
    .line 328
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefMain;->s(Landroid/content/Context;Z)V

    .line 329
    .line 330
    .line 331
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefMain;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefMain;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    if-nez v6, :cond_15

    .line 336
    .line 337
    goto :goto_8

    .line 338
    :cond_15
    const-string v12, "mAdsSuccess"

    .line 339
    .line 340
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 341
    .line 342
    .line 343
    const-string v12, "mStatusHeight"

    .line 344
    .line 345
    invoke-virtual {v6, v11, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v12, "mStatusConfirm"

    .line 349
    .line 350
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 351
    .line 352
    .line 353
    const-string v12, "mNaviHeight2"

    .line 354
    .line 355
    invoke-virtual {v6, v11, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v12, "mNaviConfirm"

    .line 359
    .line 360
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_16
    const-string v12, "PrefPdf"

    .line 368
    .line 369
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v12

    .line 373
    if-eqz v12, :cond_18

    .line 374
    .line 375
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefPdf;->s(Landroid/content/Context;Z)V

    .line 376
    .line 377
    .line 378
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    if-nez v6, :cond_17

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_17
    const-string v12, "mMaxTexSize"

    .line 386
    .line 387
    invoke-virtual {v6, v11, v12}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    const-string v12, "mPayConfirm"

    .line 391
    .line 392
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_18
    const-string v12, "PrefRead"

    .line 400
    .line 401
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    const-string v13, "mFontPath"

    .line 406
    .line 407
    const-string v14, "mUserFont"

    .line 408
    .line 409
    const-string v15, ""

    .line 410
    .line 411
    if-eqz v12, :cond_1a

    .line 412
    .line 413
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefRead;->s(Landroid/content/Context;Z)V

    .line 414
    .line 415
    .line 416
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefRead;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefRead;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    if-nez v6, :cond_19

    .line 421
    .line 422
    goto/16 :goto_8

    .line 423
    .line 424
    :cond_19
    invoke-virtual {v6, v14, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v6, v13, v15}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_8

    .line 434
    .line 435
    :cond_1a
    const-string v12, "PrefSecret"

    .line 436
    .line 437
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v12

    .line 441
    if-eqz v12, :cond_1c

    .line 442
    .line 443
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefSecret;->s(Landroid/content/Context;Z)V

    .line 444
    .line 445
    .line 446
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    if-nez v6, :cond_1b

    .line 451
    .line 452
    goto/16 :goto_8

    .line 453
    .line 454
    :cond_1b
    const-string v12, "mLockSkip"

    .line 455
    .line 456
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_8

    .line 463
    .line 464
    :cond_1c
    const-string v12, "PrefTts"

    .line 465
    .line 466
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v12

    .line 470
    if-eqz v12, :cond_20

    .line 471
    .line 472
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefTts;->s(Landroid/content/Context;Z)V

    .line 473
    .line 474
    .line 475
    invoke-static {v1, v11}, Lcom/mycompany/app/pref/PrefTts;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefTts;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    if-nez v6, :cond_1d

    .line 480
    .line 481
    goto :goto_a

    .line 482
    :cond_1d
    const-string v12, "mSkipKeypad"

    .line 483
    .line 484
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 485
    .line 486
    .line 487
    sget-boolean v12, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 488
    .line 489
    if-eqz v12, :cond_1f

    .line 490
    .line 491
    :try_start_0
    invoke-static {v1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 492
    .line 493
    .line 494
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    if-nez v12, :cond_1e

    .line 496
    .line 497
    goto :goto_9

    .line 498
    :catch_0
    :cond_1e
    sput-boolean v11, Lcom/mycompany/app/pref/PrefTts;->y:Z

    .line 499
    .line 500
    const-string v12, "mVpnMode"

    .line 501
    .line 502
    invoke-virtual {v6, v12, v11}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 503
    .line 504
    .line 505
    :cond_1f
    :goto_9
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 506
    .line 507
    .line 508
    :goto_a
    const/4 v12, 0x0

    .line 509
    goto/16 :goto_b

    .line 510
    .line 511
    :cond_20
    const-string v11, "PrefWeb"

    .line 512
    .line 513
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v11

    .line 517
    if-eqz v11, :cond_25

    .line 518
    .line 519
    iget-boolean v6, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->P0:Z

    .line 520
    .line 521
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->Q0:Z

    .line 522
    .line 523
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefWeb;->s(Landroid/content/Context;Z)V

    .line 524
    .line 525
    .line 526
    sget-boolean v12, Lcom/mycompany/app/pref/PrefWeb;->S:Z

    .line 527
    .line 528
    if-eqz v12, :cond_21

    .line 529
    .line 530
    if-eqz v6, :cond_21

    .line 531
    .line 532
    sget-boolean v12, Lcom/mycompany/app/pref/PrefWeb;->T:Z

    .line 533
    .line 534
    if-eqz v12, :cond_21

    .line 535
    .line 536
    if-eqz v11, :cond_21

    .line 537
    .line 538
    const/4 v12, 0x0

    .line 539
    goto :goto_a

    .line 540
    :cond_21
    const/4 v12, 0x0

    .line 541
    invoke-static {v1, v12}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 542
    .line 543
    .line 544
    move-result-object v13

    .line 545
    if-nez v13, :cond_22

    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_22
    sget-boolean v14, Lcom/mycompany/app/pref/PrefWeb;->S:Z

    .line 549
    .line 550
    if-eqz v14, :cond_23

    .line 551
    .line 552
    if-nez v6, :cond_23

    .line 553
    .line 554
    const-string v6, "mQuickBack"

    .line 555
    .line 556
    invoke-virtual {v13, v6, v12}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 557
    .line 558
    .line 559
    :cond_23
    sget-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->T:Z

    .line 560
    .line 561
    if-eqz v6, :cond_24

    .line 562
    .line 563
    if-nez v11, :cond_24

    .line 564
    .line 565
    const-string v6, "mQckBckSec"

    .line 566
    .line 567
    invoke-virtual {v13, v6, v12}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 568
    .line 569
    .line 570
    :cond_24
    invoke-virtual {v13}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 571
    .line 572
    .line 573
    goto :goto_a

    .line 574
    :cond_25
    const-string v11, "PrefZone"

    .line 575
    .line 576
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v11

    .line 580
    if-eqz v11, :cond_27

    .line 581
    .line 582
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    invoke-static {v1, v6, v7}, Lcom/mycompany/app/pref/PrefZone;->s(Landroid/content/Context;Landroid/content/res/Resources;Z)V

    .line 587
    .line 588
    .line 589
    const/4 v12, 0x0

    .line 590
    invoke-static {v1, v12}, Lcom/mycompany/app/pref/PrefZone;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZone;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    if-nez v6, :cond_26

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_26
    invoke-virtual {v6, v14, v12}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v6, v13, v15}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 604
    .line 605
    .line 606
    goto :goto_b

    .line 607
    :cond_27
    const/4 v12, 0x0

    .line 608
    const-string v11, "PrefZtwo"

    .line 609
    .line 610
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v6

    .line 614
    if-eqz v6, :cond_29

    .line 615
    .line 616
    invoke-static {v1, v7}, Lcom/mycompany/app/pref/PrefZtwo;->s(Landroid/content/Context;Z)V

    .line 617
    .line 618
    .line 619
    invoke-static {v1, v12}, Lcom/mycompany/app/pref/PrefZtwo;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefZtwo;

    .line 620
    .line 621
    .line 622
    move-result-object v6

    .line 623
    if-nez v6, :cond_28

    .line 624
    .line 625
    goto :goto_b

    .line 626
    :cond_28
    const-string v11, "mSoulAgent"

    .line 627
    .line 628
    invoke-virtual {v6, v11, v15}, Lcom/mycompany/app/pref/PrefCore;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v6}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 632
    .line 633
    .line 634
    :cond_29
    :goto_b
    iput-boolean v7, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z

    .line 635
    .line 636
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->N()V

    .line 637
    .line 638
    .line 639
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 640
    .line 641
    goto/16 :goto_4

    .line 642
    .line 643
    :cond_2a
    :goto_d
    return-void
.end method

.method public static J(Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_f

    .line 10
    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_f

    .line 16
    .line 17
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    :try_start_0
    const-string v0, "s"

    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    const-string v1, "null"

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_2
    if-nez p0, :cond_3

    .line 44
    .line 45
    new-instance p1, Landroid/content/ContentValues;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .line 49
    .line 50
    move-object p0, p1

    .line 51
    :cond_3
    invoke-virtual {p0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_4
    const-string v0, "b"

    .line 57
    .line 58
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_5

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_5
    invoke-static {p1, p4}, Lcom/mycompany/app/main/MainUtil;->d0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-nez p3, :cond_6

    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_6
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    .line 85
    .line 86
    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 90
    .line 91
    const/16 v0, 0x64

    .line 92
    .line 93
    invoke-virtual {p1, p4, v0, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 94
    .line 95
    .line 96
    if-nez p0, :cond_7

    .line 97
    .line 98
    new-instance p1, Landroid/content/ContentValues;

    .line 99
    .line 100
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .line 102
    .line 103
    move-object p0, p1

    .line 104
    :cond_7
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    const-string p1, "i"

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_b

    .line 122
    .line 123
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 p3, -0x1

    .line 128
    if-ne p1, p3, :cond_9

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_9
    if-nez p0, :cond_a

    .line 132
    .line 133
    new-instance p3, Landroid/content/ContentValues;

    .line 134
    .line 135
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .line 137
    .line 138
    move-object p0, p3

    .line 139
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_b
    const-string p1, "l"

    .line 148
    .line 149
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_f

    .line 154
    .line 155
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    const-wide/16 v0, -0x1

    .line 160
    .line 161
    if-eqz p1, :cond_c

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_c
    :try_start_2
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 165
    .line 166
    .line 167
    move-result-wide p3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    goto :goto_1

    .line 169
    :catch_0
    :goto_0
    move-wide p3, v0

    .line 170
    :goto_1
    cmp-long p1, p3, v0

    .line 171
    .line 172
    if-nez p1, :cond_d

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_d
    if-nez p0, :cond_e

    .line 176
    .line 177
    :try_start_3
    new-instance p1, Landroid/content/ContentValues;

    .line 178
    .line 179
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .line 181
    .line 182
    move-object p0, p1

    .line 183
    :cond_e
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    .line 189
    .line 190
    :catch_1
    :cond_f
    :goto_2
    return-object p0
.end method


# virtual methods
.method public final D(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->I0:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->J0:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->z(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    new-instance p1, Lcom/mycompany/app/dialog/DialogBackupLoad$17;

    .line 48
    .line 49
    invoke-direct {p1, v0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad$17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final E(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_57

    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1c

    .line 11
    .line 12
    :cond_0
    const-string v1, "DbAdsCmd.db"

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbAdsCmd;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbAdsCmd;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "DbAdsCmd_table"

    .line 39
    .line 40
    goto/16 :goto_1b

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-object v0

    .line 43
    :cond_3
    const-string v1, "DbBookAds.db"

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 52
    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 56
    .line 57
    if-nez p2, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "DbBookAds_table"

    .line 69
    .line 70
    goto/16 :goto_1b

    .line 71
    .line 72
    :cond_5
    :goto_1
    return-object v0

    .line 73
    :cond_6
    const-string v1, "DbBookAgent.db"

    .line 74
    .line 75
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_9

    .line 80
    .line 81
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 82
    .line 83
    if-eqz p2, :cond_8

    .line 84
    .line 85
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 86
    .line 87
    if-nez p2, :cond_7

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_7
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookAgent;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAgent;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p2, "DbBookAgent_table"

    .line 99
    .line 100
    goto/16 :goto_1b

    .line 101
    .line 102
    :cond_8
    :goto_2
    return-object v0

    .line 103
    :cond_9
    const-string v1, "DbBookBlock.db"

    .line 104
    .line 105
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_c

    .line 110
    .line 111
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 112
    .line 113
    if-eqz p2, :cond_b

    .line 114
    .line 115
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 116
    .line 117
    if-nez p2, :cond_a

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_a
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p2, "DbBookBlock_table"

    .line 129
    .line 130
    goto/16 :goto_1b

    .line 131
    .line 132
    :cond_b
    :goto_3
    return-object v0

    .line 133
    :cond_c
    const-string v1, "DbBookDc.db"

    .line 134
    .line 135
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_f

    .line 140
    .line 141
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 142
    .line 143
    if-eqz p2, :cond_e

    .line 144
    .line 145
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 146
    .line 147
    if-nez p2, :cond_d

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_d
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string p2, "DbBookDc_table"

    .line 159
    .line 160
    goto/16 :goto_1b

    .line 161
    .line 162
    :cond_e
    :goto_4
    return-object v0

    .line 163
    :cond_f
    const-string v1, "DbBookFilter.db"

    .line 164
    .line 165
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_12

    .line 170
    .line 171
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 172
    .line 173
    if-eqz p2, :cond_11

    .line 174
    .line 175
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 176
    .line 177
    if-nez p2, :cond_10

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_10
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string p2, "DbBookFilter_table"

    .line 189
    .line 190
    goto/16 :goto_1b

    .line 191
    .line 192
    :cond_11
    :goto_5
    return-object v0

    .line 193
    :cond_12
    const-string v1, "DbBookJava.db"

    .line 194
    .line 195
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_15

    .line 200
    .line 201
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 202
    .line 203
    if-eqz p2, :cond_14

    .line 204
    .line 205
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 206
    .line 207
    if-nez p2, :cond_13

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_13
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    const-string p2, "DbBookJava_table"

    .line 219
    .line 220
    goto/16 :goto_1b

    .line 221
    .line 222
    :cond_14
    :goto_6
    return-object v0

    .line 223
    :cond_15
    const-string v1, "DbBookLink.db"

    .line 224
    .line 225
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_18

    .line 230
    .line 231
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 232
    .line 233
    if-eqz p2, :cond_17

    .line 234
    .line 235
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 236
    .line 237
    if-nez p2, :cond_16

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_16
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    const-string p2, "DbBookLink_table"

    .line 249
    .line 250
    goto/16 :goto_1b

    .line 251
    .line 252
    :cond_17
    :goto_7
    return-object v0

    .line 253
    :cond_18
    const-string v1, "DbBookLocale.db"

    .line 254
    .line 255
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_1b

    .line 260
    .line 261
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 262
    .line 263
    if-eqz p2, :cond_1a

    .line 264
    .line 265
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 266
    .line 267
    if-nez p2, :cond_19

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_19
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookLocale;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLocale;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    const-string p2, "DbBookLocale_table"

    .line 279
    .line 280
    goto/16 :goto_1b

    .line 281
    .line 282
    :cond_1a
    :goto_8
    return-object v0

    .line 283
    :cond_1b
    const-string v1, "DbBookMemo.db"

    .line 284
    .line 285
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_1e

    .line 290
    .line 291
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 292
    .line 293
    if-eqz p2, :cond_1d

    .line 294
    .line 295
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 296
    .line 297
    if-nez p2, :cond_1c

    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_1c
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    const-string p2, "DbBookMemo_table"

    .line 309
    .line 310
    goto/16 :goto_1b

    .line 311
    .line 312
    :cond_1d
    :goto_9
    return-object v0

    .line 313
    :cond_1e
    const-string v1, "DbBookOver.db"

    .line 314
    .line 315
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_21

    .line 320
    .line 321
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 322
    .line 323
    if-eqz p2, :cond_20

    .line 324
    .line 325
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 326
    .line 327
    if-nez p2, :cond_1f

    .line 328
    .line 329
    goto :goto_a

    .line 330
    :cond_1f
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    const-string p2, "DbBookOver_table"

    .line 339
    .line 340
    goto/16 :goto_1b

    .line 341
    .line 342
    :cond_20
    :goto_a
    return-object v0

    .line 343
    :cond_21
    const-string v1, "DbBookPop.db"

    .line 344
    .line 345
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_24

    .line 350
    .line 351
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 352
    .line 353
    if-eqz p2, :cond_23

    .line 354
    .line 355
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 356
    .line 357
    if-nez p2, :cond_22

    .line 358
    .line 359
    goto :goto_b

    .line 360
    :cond_22
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookPop;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPop;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    const-string p2, "DbBookPop_table"

    .line 369
    .line 370
    goto/16 :goto_1b

    .line 371
    .line 372
    :cond_23
    :goto_b
    return-object v0

    .line 373
    :cond_24
    const-string v1, "DbBookRecent.db"

    .line 374
    .line 375
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_27

    .line 380
    .line 381
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 382
    .line 383
    if-eqz p2, :cond_26

    .line 384
    .line 385
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 386
    .line 387
    if-nez p2, :cond_25

    .line 388
    .line 389
    goto :goto_c

    .line 390
    :cond_25
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    const-string p2, "DbBookRecent_table"

    .line 399
    .line 400
    goto/16 :goto_1b

    .line 401
    .line 402
    :cond_26
    :goto_c
    return-object v0

    .line 403
    :cond_27
    const-string v1, "DbBookScript.db"

    .line 404
    .line 405
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_2a

    .line 410
    .line 411
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 412
    .line 413
    if-eqz p2, :cond_29

    .line 414
    .line 415
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 416
    .line 417
    if-nez p2, :cond_28

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_28
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    const-string p2, "DbBookScript_table"

    .line 429
    .line 430
    goto/16 :goto_1b

    .line 431
    .line 432
    :cond_29
    :goto_d
    return-object v0

    .line 433
    :cond_2a
    const-string v1, "DbBookSearch.db"

    .line 434
    .line 435
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_2d

    .line 440
    .line 441
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 442
    .line 443
    if-eqz p2, :cond_2c

    .line 444
    .line 445
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 446
    .line 447
    if-nez p2, :cond_2b

    .line 448
    .line 449
    goto :goto_e

    .line 450
    :cond_2b
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    const-string p2, "DbBookSearch_table"

    .line 459
    .line 460
    goto/16 :goto_1b

    .line 461
    .line 462
    :cond_2c
    :goto_e
    return-object v0

    .line 463
    :cond_2d
    const-string v1, "DbBookTheme.db"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_theme_miss

    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz p2, :cond_theme_null

    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    if-nez p2, :cond_theme_ok

    goto :goto_theme_null

    :cond_theme_ok
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookTheme;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTheme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "DbBookTheme_table"

    goto/16 :goto_1b

    :cond_theme_null
    :goto_theme_null
    return-object v0

    :cond_theme_miss
    const-string v1, "DbBookTmem.db"

    .line 464
    .line 465
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-eqz v1, :cond_30

    .line 470
    .line 471
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 472
    .line 473
    if-eqz p2, :cond_2f

    .line 474
    .line 475
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 476
    .line 477
    if-nez p2, :cond_2e

    .line 478
    .line 479
    goto :goto_f

    .line 480
    :cond_2e
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookTmem;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTmem;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const-string p2, "DbBookTmem_table"

    .line 489
    .line 490
    goto/16 :goto_1b

    .line 491
    .line 492
    :cond_2f
    :goto_f
    return-object v0

    .line 493
    :cond_30
    const-string v1, "DbBookTrans.db"

    .line 494
    .line 495
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_33

    .line 500
    .line 501
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 502
    .line 503
    if-eqz p2, :cond_32

    .line 504
    .line 505
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 506
    .line 507
    if-nez p2, :cond_31

    .line 508
    .line 509
    goto :goto_10

    .line 510
    :cond_31
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookTrans;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTrans;

    .line 511
    .line 512
    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    const-string p2, "DbBookTrans_table"

    .line 519
    .line 520
    goto/16 :goto_1b

    .line 521
    .line 522
    :cond_32
    :goto_10
    return-object v0

    .line 523
    :cond_33
    const-string v1, "DbBookUser.db"

    .line 524
    .line 525
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_36

    .line 530
    .line 531
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 532
    .line 533
    if-eqz p2, :cond_35

    .line 534
    .line 535
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 536
    .line 537
    if-nez p2, :cond_34

    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_34
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    const-string p2, "DbBookUser_table"

    .line 549
    .line 550
    goto/16 :goto_1b

    .line 551
    .line 552
    :cond_35
    :goto_11
    return-object v0

    .line 553
    :cond_36
    const-string v1, "DbRecentLang.db"

    .line 554
    .line 555
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_39

    .line 560
    .line 561
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 562
    .line 563
    if-eqz p2, :cond_38

    .line 564
    .line 565
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 566
    .line 567
    if-nez p2, :cond_37

    .line 568
    .line 569
    goto :goto_12

    .line 570
    :cond_37
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbRecentLang;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbRecentLang;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    const-string p2, "DbRecentLang_table"

    .line 579
    .line 580
    goto/16 :goto_1b

    .line 581
    .line 582
    :cond_38
    :goto_12
    return-object v0

    .line 583
    :cond_39
    const-string v1, "DbBookQuick.db"

    .line 584
    .line 585
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-eqz v1, :cond_3c

    .line 590
    .line 591
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 592
    .line 593
    if-eqz p2, :cond_3b

    .line 594
    .line 595
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 596
    .line 597
    if-nez p2, :cond_3a

    .line 598
    .line 599
    goto :goto_13

    .line 600
    :cond_3a
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 605
    .line 606
    .line 607
    move-result-object p1

    .line 608
    const-string p2, "DbBookQuick_table"

    .line 609
    .line 610
    goto/16 :goto_1b

    .line 611
    .line 612
    :cond_3b
    :goto_13
    return-object v0

    .line 613
    :cond_3c
    const-string v1, "DbBookWeb.db"

    .line 614
    .line 615
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_3f

    .line 620
    .line 621
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 622
    .line 623
    if-eqz p2, :cond_3e

    .line 624
    .line 625
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 626
    .line 627
    if-nez p2, :cond_3d

    .line 628
    .line 629
    goto :goto_14

    .line 630
    :cond_3d
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    const-string p2, "DbBookWeb_table"

    .line 639
    .line 640
    goto/16 :goto_1b

    .line 641
    .line 642
    :cond_3e
    :goto_14
    return-object v0

    .line 643
    :cond_3f
    const-string v1, "DbBookHistory.db"

    .line 644
    .line 645
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    if-eqz v1, :cond_42

    .line 650
    .line 651
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 652
    .line 653
    if-eqz p2, :cond_41

    .line 654
    .line 655
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 656
    .line 657
    if-nez p2, :cond_40

    .line 658
    .line 659
    goto :goto_15

    .line 660
    :cond_40
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 661
    .line 662
    .line 663
    move-result-object p1

    .line 664
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 665
    .line 666
    .line 667
    move-result-object p1

    .line 668
    const-string p2, "DbBookHistory_table"

    .line 669
    .line 670
    goto/16 :goto_1b

    .line 671
    .line 672
    :cond_41
    :goto_15
    return-object v0

    .line 673
    :cond_42
    const-string v1, "DbBookIcon.db"

    .line 674
    .line 675
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-eqz v1, :cond_46

    .line 680
    .line 681
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 682
    .line 683
    if-eqz p2, :cond_43

    .line 684
    .line 685
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 686
    .line 687
    if-nez p2, :cond_44

    .line 688
    .line 689
    :cond_43
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 690
    .line 691
    if-eqz p2, :cond_45

    .line 692
    .line 693
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 694
    .line 695
    if-eqz p2, :cond_45

    .line 696
    .line 697
    :cond_44
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookIcon;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookIcon;

    .line 698
    .line 699
    .line 700
    move-result-object p1

    .line 701
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    const-string p2, "DbBookIcon_table"

    .line 706
    .line 707
    goto/16 :goto_1b

    .line 708
    .line 709
    :cond_45
    return-object v0

    .line 710
    :cond_46
    const-string v1, "DbBookTab2.db"

    .line 711
    .line 712
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    if-eqz v1, :cond_49

    .line 717
    .line 718
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 719
    .line 720
    if-eqz p2, :cond_48

    .line 721
    .line 722
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 723
    .line 724
    if-nez p2, :cond_47

    .line 725
    .line 726
    goto :goto_16

    .line 727
    :cond_47
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookTabOld;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 732
    .line 733
    .line 734
    move-result-object p1

    .line 735
    const-string p2, "DbBookTab2_table"

    .line 736
    .line 737
    const/4 v2, 0x1

    .line 738
    goto/16 :goto_1b

    .line 739
    .line 740
    :cond_48
    :goto_16
    return-object v0

    .line 741
    :cond_49
    const-string v1, "DbBookTab3.db"

    .line 742
    .line 743
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    if-eqz v1, :cond_4c

    .line 748
    .line 749
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 750
    .line 751
    if-eqz p2, :cond_4b

    .line 752
    .line 753
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 754
    .line 755
    if-nez p2, :cond_4a

    .line 756
    .line 757
    goto :goto_17

    .line 758
    :cond_4a
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 763
    .line 764
    .line 765
    move-result-object p1

    .line 766
    const-string p2, "DbBookTab3_table"

    .line 767
    .line 768
    goto :goto_1b

    .line 769
    :cond_4b
    :goto_17
    return-object v0

    .line 770
    :cond_4c
    const-string v1, "DbTabState.db"

    .line 771
    .line 772
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    if-eqz v1, :cond_4f

    .line 777
    .line 778
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 779
    .line 780
    if-eqz p2, :cond_4e

    .line 781
    .line 782
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 783
    .line 784
    if-nez p2, :cond_4d

    .line 785
    .line 786
    goto :goto_18

    .line 787
    :cond_4d
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbTabState;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;

    .line 788
    .line 789
    .line 790
    move-result-object p1

    .line 791
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 792
    .line 793
    .line 794
    move-result-object p1

    .line 795
    const-string p2, "DbTabState_table"

    .line 796
    .line 797
    goto :goto_1b

    .line 798
    :cond_4e
    :goto_18
    return-object v0

    .line 799
    :cond_4f
    const-string v1, "DbTabThumb.db"

    .line 800
    .line 801
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    if-eqz v1, :cond_52

    .line 806
    .line 807
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 808
    .line 809
    if-eqz p2, :cond_51

    .line 810
    .line 811
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 812
    .line 813
    if-nez p2, :cond_50

    .line 814
    .line 815
    goto :goto_19

    .line 816
    :cond_50
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbTabThumb;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabThumb;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 821
    .line 822
    .line 823
    move-result-object p1

    .line 824
    const-string p2, "DbTabThumb_table"

    .line 825
    .line 826
    goto :goto_1b

    .line 827
    :cond_51
    :goto_19
    return-object v0

    .line 828
    :cond_52
    const-string v1, "DbBookPass.db"

    .line 829
    .line 830
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result p2

    .line 834
    if-eqz p2, :cond_55

    .line 835
    .line 836
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 837
    .line 838
    if-eqz p2, :cond_54

    .line 839
    .line 840
    iget-boolean p2, p2, Lcom/mycompany/app/view/MyButtonCheck;->D:Z

    .line 841
    .line 842
    if-nez p2, :cond_53

    .line 843
    .line 844
    goto :goto_1a

    .line 845
    :cond_53
    invoke-static {p1}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 850
    .line 851
    .line 852
    move-result-object p1

    .line 853
    const-string p2, "DbBookPass_table"

    .line 854
    .line 855
    goto :goto_1b

    .line 856
    :cond_54
    :goto_1a
    return-object v0

    .line 857
    :cond_55
    move-object p1, v0

    .line 858
    move-object p2, p1

    .line 859
    :goto_1b
    if-eqz p1, :cond_57

    .line 860
    .line 861
    if-nez p2, :cond_56

    .line 862
    .line 863
    goto :goto_1c

    .line 864
    :cond_56
    new-instance v0, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;

    .line 865
    .line 866
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 867
    .line 868
    .line 869
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 870
    .line 871
    iput-object p2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;

    .line 872
    .line 873
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->c:Z

    .line 874
    .line 875
    :cond_57
    :goto_1c
    return-object v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->K0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

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

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

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
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->L(Z)V

    .line 12
    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->M(I)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Lcom/mycompany/app/dialog/DialogBackupLoad;->I(Z)V

    .line 21
    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->K0:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "-"

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->O0:Ljava/lang/String;

    .line 59
    .line 60
    return-void
.end method

.method public final I(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

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

.method public final K(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_a

    .line 12
    .line 13
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    move-object/from16 v3, p2

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, ".db"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogBackupLoad;->E(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x1

    .line 54
    const/4 v8, 0x0

    .line 55
    :catch_0
    :cond_2
    :goto_0
    const/4 v9, 0x0

    .line 56
    if-ge v8, v3, :cond_9

    .line 57
    .line 58
    move-object/from16 v10, p3

    .line 59
    .line 60
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    check-cast v11, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_3

    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_3
    if-nez v11, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const-string v12, "##"

    .line 80
    .line 81
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    if-eqz v11, :cond_2

    .line 86
    .line 87
    array-length v12, v11

    .line 88
    if-eqz v12, :cond_2

    .line 89
    .line 90
    array-length v12, v11

    .line 91
    rem-int/lit8 v12, v12, 0x3

    .line 92
    .line 93
    if-eqz v12, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    :try_start_0
    array-length v12, v11

    .line 97
    move-object v14, v9

    .line 98
    const/4 v13, 0x0

    .line 99
    :goto_1
    if-ge v13, v12, :cond_7

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->F()Z

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    if-eqz v15, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    aget-object v15, v11, v13

    .line 109
    .line 110
    add-int/lit8 v16, v13, 0x1

    .line 111
    .line 112
    aget-object v4, v11, v16

    .line 113
    .line 114
    add-int/lit8 v16, v13, 0x2

    .line 115
    .line 116
    aget-object v5, v11, v16

    .line 117
    .line 118
    invoke-static {v14, v1, v15, v4, v5}, Lcom/mycompany/app/dialog/DialogBackupLoad;->J(Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 119
    .line 120
    .line 121
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v13, v13, 0x3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    if-eqz v14, :cond_2

    .line 126
    .line 127
    if-eqz v7, :cond_8

    .line 128
    .line 129
    :try_start_1
    iget-object v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    .line 131
    iget-object v5, v2, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v4, v5, v9, v9}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    goto :goto_2

    .line 138
    :catch_1
    const/4 v7, 0x0

    .line 139
    goto :goto_0

    .line 140
    :cond_8
    :goto_2
    :try_start_2
    iget-object v4, v2, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    .line 142
    iget-object v5, v2, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->b:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v4, v5, v14}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 145
    .line 146
    .line 147
    const/4 v4, 0x1

    .line 148
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogBackupLoad;->L0:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    const/4 v6, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_9
    iget-boolean v2, v2, Lcom/mycompany/app/dialog/DialogBackupLoad$DbItem;->c:Z

    .line 153
    .line 154
    if-eqz v2, :cond_a

    .line 155
    .line 156
    if-eqz v6, :cond_a

    .line 157
    .line 158
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTab;->m(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookTabOld;->b(Landroid/content/Context;Z)V

    .line 163
    .line 164
    .line 165
    const/4 v4, 0x1

    .line 166
    invoke-static {v1, v4}, Lcom/mycompany/app/db/book/DbBookTabOld;->b(Landroid/content/Context;Z)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTabOld;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const-string v2, "DbBookTab2_table"

    .line 178
    .line 179
    invoke-static {v1, v2, v9, v9}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    :cond_a
    :goto_3
    return-void
.end method

.method public final L(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->x0:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->A0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->B0:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iput v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->B0:I

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
    iget-wide v2, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->C0:J

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
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->C0:J

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
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->S0:Ljava/lang/Runnable;

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

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->F0:Lcom/mycompany/app/dialog/DialogBackupLoad$DialogTask;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->D(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->f0:Lcom/mycompany/app/view/MyLineFrame;

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 50
    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 57
    .line 58
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->k0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 66
    .line 67
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 75
    .line 76
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 77
    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->n0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 84
    .line 85
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 86
    .line 87
    if-eqz v0, :cond_9

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 93
    .line 94
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 95
    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 102
    .line 103
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 104
    .line 105
    if-eqz v0, :cond_b

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 108
    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 111
    .line 112
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->t0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 120
    .line 121
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->u0:Lcom/mycompany/app/view/MyRoundItem;

    .line 122
    .line 123
    if-eqz v0, :cond_d

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->u0:Lcom/mycompany/app/view/MyRoundItem;

    .line 129
    .line 130
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 131
    .line 132
    if-eqz v0, :cond_e

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->w0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 138
    .line 139
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    if-eqz v0, :cond_e_web

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c1:Lcom/mycompany/app/view/MyButtonCheck;

    :cond_e_web
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a1:Lcom/mycompany/app/view/MyLineFrame;

    if-eqz v0, :cond_e_web2

    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a1:Lcom/mycompany/app/view/MyLineFrame;

    :cond_e_web2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b1:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 140
    .line 141
    if-eqz v0, :cond_f

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 144
    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 147
    .line 148
    :cond_f
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->a0:Landroid/content/Context;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->b0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->H0:Ljava/lang/String;

    .line 153
    .line 154
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->c0:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 155
    .line 156
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->e0:Landroidx/core/widget/NestedScrollView;

    .line 157
    .line 158
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->x0:Landroid/widget/FrameLayout;

    .line 171
    .line 172
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->E0:Lcom/mycompany/app/view/MyLineText;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->N0:Ljava/lang/String;

    .line 179
    .line 180
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogBackupLoad;->O0:Ljava/lang/String;

    .line 181
    .line 182
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 183
    .line 184
    .line 185
    return-void
.end method
