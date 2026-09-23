.class Lcom/mycompany/app/setting/SettingTts$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingTts;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTts$9;->a:Lcom/mycompany/app/setting/SettingTts;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingTts$9;->a:Lcom/mycompany/app/setting/SettingTts;

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
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->o:I

    .line 9
    .line 10
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->n:I

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
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x5

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILcom/mycompany/app/dialog/a;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
