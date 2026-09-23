.class Lcom/mycompany/app/setting/SettingDisplay$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$9;->b:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingDisplay$9;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$9;->b:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDisplay;->a2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 3

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->W:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingDisplay$9;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, p1, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefEditor;->z:I

    .line 15
    .line 16
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingDisplay$9;->b:Lcom/mycompany/app/setting/SettingDisplay;

    .line 17
    .line 18
    iget-object v1, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    const-string v2, "mScrFilUse"

    .line 21
    .line 22
    invoke-static {v1, v0, p1, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    sget-object v2, Lcom/mycompany/app/main/MainConst;->X:[I

    .line 30
    .line 31
    aget p1, v2, p1

    .line 32
    .line 33
    const/16 v2, 0xc

    .line 34
    .line 35
    invoke-virtual {v1, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p2, p1, v1}, Lcom/mycompany/app/setting/SettingActivity;->I0(IZ)V

    .line 44
    .line 45
    .line 46
    return v0
.end method
