.class Lcom/mycompany/app/setting/SettingMedia$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMedia;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMedia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMedia$6;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMedia$6;->a:Lcom/mycompany/app/setting/SettingMedia;

    .line 2
    .line 3
    iget p2, p1, Lcom/mycompany/app/setting/SettingMedia;->c2:I

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0xb

    .line 11
    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->w:I

    .line 15
    .line 16
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->v:I

    .line 17
    .line 18
    invoke-static {p2, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 23
    .line 24
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 25
    .line 26
    sget v3, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/16 v2, 0xb

    .line 31
    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->k:I

    .line 40
    .line 41
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->j:I

    .line 42
    .line 43
    invoke-static {p2, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 50
    .line 51
    sget v3, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
