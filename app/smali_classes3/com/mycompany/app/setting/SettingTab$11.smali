.class Lcom/mycompany/app/setting/SettingTab$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingTab;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTab$11;->a:Lcom/mycompany/app/setting/SettingTab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab$11;->a:Lcom/mycompany/app/setting/SettingTab;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 8
    .line 9
    sget v3, Lnet/kaki87/soul2/testing/R$string;->show_tab_bar:I

    .line 10
    .line 11
    sget-object v2, Lcom/mycompany/app/dialog/DialogSetTabPos;->D0:[I

    .line 12
    .line 13
    sget v4, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 14
    .line 15
    aget v4, v2, v4

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
