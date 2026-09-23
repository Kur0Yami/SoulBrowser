.class Lcom/mycompany/app/setting/SettingSite$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mycompany/app/setting/SettingSite;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSite;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSite$10;->b:Lcom/mycompany/app/setting/SettingSite;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingSite$10;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSite;->e2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite$10;->b:Lcom/mycompany/app/setting/SettingSite;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSite;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget p1, p0, Lcom/mycompany/app/setting/SettingSite$10;->a:I

    .line 2
    .line 3
    rem-int/2addr p2, p1

    .line 4
    sget p1, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefZone;->H:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSite$10;->b:Lcom/mycompany/app/setting/SettingSite;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 15
    .line 16
    const/16 v2, 0xf

    .line 17
    .line 18
    const-string v3, "mOpenLink4"

    .line 19
    .line 20
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/mycompany/app/main/MainConst;->h:[I

    .line 28
    .line 29
    aget p2, v1, p2

    .line 30
    .line 31
    const/16 v1, 0xb

    .line 32
    .line 33
    invoke-virtual {p1, v1, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return v0
.end method
