.class Lcom/mycompany/app/setting/SettingNews$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingNews;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$13;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$13;->a:Lcom/mycompany/app/setting/SettingNews;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->T0()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sput-object p1, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    const-string v3, "mNewsUrl"

    .line 24
    .line 25
    invoke-static {v2, v1, v3, p1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->D0()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
