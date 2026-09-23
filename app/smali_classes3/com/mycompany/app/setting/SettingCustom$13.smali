.class Lcom/mycompany/app/setting/SettingCustom$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingCustom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$13;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$13;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->P:I

    .line 9
    .line 10
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->O:I

    .line 11
    .line 12
    invoke-static {p2, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 17
    .line 18
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 19
    .line 20
    sget v3, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/16 v2, 0xe

    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
