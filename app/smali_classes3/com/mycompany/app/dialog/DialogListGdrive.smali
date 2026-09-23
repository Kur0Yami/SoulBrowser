.class public Lcom/mycompany/app/dialog/DialogListGdrive;
.super Lcom/mycompany/app/view/MyDialogNormal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;,
        Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;
    }
.end annotation


# static fields
.field public static final synthetic X:I


# instance fields
.field public final A:I

.field public B:Lcom/mycompany/app/view/MyMainRelative;

.field public C:Lcom/mycompany/app/view/MyButtonImage;

.field public D:Landroidx/appcompat/widget/AppCompatTextView;

.field public E:Lcom/mycompany/app/view/MyButtonImage;

.field public F:Lcom/mycompany/app/view/MyButtonImage;

.field public G:Lcom/mycompany/app/view/MyRecyclerView;

.field public H:Lcom/mycompany/app/view/MyManagerLinear;

.field public I:Lcom/mycompany/app/gdrive/GdriveAdapter;

.field public J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

.field public K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

.field public L:Lcom/mycompany/app/view/MyScrollBar;

.field public M:Lcom/mycompany/app/view/MyFadeImage;

.field public N:Lcom/mycompany/app/view/MyCoverView;

.field public O:Ljava/lang/String;

.field public P:Lcom/mycompany/app/view/MyPopupMenu;

.field public Q:Lcom/mycompany/app/dialog/DialogSetSort;

.field public R:Lcom/mycompany/app/dialog/DialogDeleteItem;

.field public S:Ljava/lang/String;

.field public T:Z

.field public final U:Ljava/lang/Runnable;

.field public V:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public W:I

.field public w:Lcom/mycompany/app/setting/SettingBackup;

.field public x:Landroid/content/Context;

.field public y:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

.field public z:Lcom/mycompany/app/gdrive/GdriveManager;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;Lcom/mycompany/app/gdrive/GdriveManager;Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullBlack:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullTheme:I

    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/view/MyDialogNormal;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/mycompany/app/dialog/DialogListGdrive$10;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogListGdrive$10;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->U:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->y:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->z:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 34
    .line 35
    const/16 p1, 0x2b

    .line 36
    .line 37
    iput p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->A:I

    .line 38
    .line 39
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogListGdrive$1;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogListGdrive$1;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iput-boolean v2, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->K:Lcom/mycompany/app/dialog/DialogListGdrive$SortTask;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->Q:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogSetSort;->dismiss()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->Q:Lcom/mycompany/app/dialog/DialogSetSort;

    .line 35
    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogListGdrive;->p()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogNormal;->u:Lcom/mycompany/app/view/MyPopupWrap;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->P:Lcom/mycompany/app/view/MyPopupMenu;

    .line 49
    .line 50
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->E:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->F:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 78
    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->G:Lcom/mycompany/app/view/MyRecyclerView;

    .line 85
    .line 86
    :cond_8
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/mycompany/app/gdrive/GdriveAdapter;->d()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    iput v3, v2, Lcom/mycompany/app/gdrive/GdriveAdapter;->f:I

    .line 95
    .line 96
    iput-object v1, v2, Lcom/mycompany/app/gdrive/GdriveAdapter;->d:Ljava/util/List;

    .line 97
    .line 98
    iput-object v1, v2, Lcom/mycompany/app/gdrive/GdriveAdapter;->e:Lcom/mycompany/app/gdrive/GdriveAdapter$GdriveListener;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->I:Lcom/mycompany/app/gdrive/GdriveAdapter;

    .line 101
    .line 102
    :cond_9
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->L:Lcom/mycompany/app/view/MyScrollBar;

    .line 103
    .line 104
    if-eqz v2, :cond_a

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 107
    .line 108
    .line 109
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->L:Lcom/mycompany/app/view/MyScrollBar;

    .line 110
    .line 111
    :cond_a
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->M:Lcom/mycompany/app/view/MyFadeImage;

    .line 112
    .line 113
    if-eqz v2, :cond_b

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyFadeImage;->e()V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->M:Lcom/mycompany/app/view/MyFadeImage;

    .line 119
    .line 120
    :cond_b
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->N:Lcom/mycompany/app/view/MyCoverView;

    .line 121
    .line 122
    if-eqz v2, :cond_c

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->N:Lcom/mycompany/app/view/MyCoverView;

    .line 128
    .line 129
    :cond_c
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 130
    .line 131
    if-eqz v2, :cond_d

    .line 132
    .line 133
    invoke-virtual {v2, v1, v0}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 134
    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->w:Lcom/mycompany/app/setting/SettingBackup;

    .line 137
    .line 138
    :cond_d
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->y:Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;

    .line 141
    .line 142
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->z:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->B:Lcom/mycompany/app/view/MyMainRelative;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->H:Lcom/mycompany/app/view/MyManagerLinear;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->O:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->S:Ljava/lang/String;

    .line 153
    .line 154
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogNormal;->dismiss()V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p1

    .line 12
    :catch_0
    return v1
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->O:Ljava/lang/String;

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
    const-string v0, "/"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->O:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->O:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogListGdrive;->o(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogListGdrive;->dismiss()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;-><init>(Lcom/mycompany/app/dialog/DialogListGdrive;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->J:Lcom/mycompany/app/dialog/DialogListGdrive$ListTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->x:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogListGdrive;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->R:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDeleteItem;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogListGdrive;->R:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
