.class Lcom/mycompany/app/setting/SettingDisplay$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$24;->a:Lcom/mycompany/app/setting/SettingDisplay;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$24;->a:Lcom/mycompany/app/setting/SettingDisplay;

    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingDisplay;->V0()V

    sput p1, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    const/16 v2, 0xe

    const-string v3, "mTabFolderColor"

    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v3, Lnet/kaki87/soul2/testing/R$string;->folder_color:I

    sget v4, Lcom/mycompany/app/pref/PrefWeb;->b0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x13

    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    return-void
.end method
