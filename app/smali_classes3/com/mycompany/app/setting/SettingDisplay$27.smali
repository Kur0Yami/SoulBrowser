.class Lcom/mycompany/app/setting/SettingDisplay$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$27;->a:Lcom/mycompany/app/setting/SettingDisplay;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$27;->a:Lcom/mycompany/app/setting/SettingDisplay;

    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->A2:Lcom/mycompany/app/view/MyPopupMenu;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDisplay;->A2:Lcom/mycompany/app/view/MyPopupMenu;

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    sget-object p1, Lcom/mycompany/app/setting/SettingDisplay;->y2:[I

    rem-int/lit8 p2, p2, 0x3

    aget p1, p1, p2

    sget p2, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->d0:I

    iget-object p2, p0, Lcom/mycompany/app/setting/SettingDisplay$27;->a:Lcom/mycompany/app/setting/SettingDisplay;

    iget-object v1, p2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const/16 v2, 0xe

    const-string v3, "mPreviewUrlBar"

    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    iget-object p2, p2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    if-eqz p2, :cond_1

    sget-object v1, Lcom/mycompany/app/setting/SettingDisplay;->z2:[I

    aget p1, v1, p1

    const/16 v1, 0x15

    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    :cond_1
    return v0
.end method
