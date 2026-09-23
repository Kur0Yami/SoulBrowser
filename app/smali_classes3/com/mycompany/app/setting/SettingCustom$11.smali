.class Lcom/mycompany/app/setting/SettingCustom$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingCustom$11;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 11

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingCustom$11;->a:Lcom/mycompany/app/setting/SettingCustom;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    const-string v3, "mRecentLimit"

    .line 15
    .line 16
    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v1, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    :goto_0
    move v8, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    sget-object v2, Lcom/mycompany/app/setting/SettingCustom;->h2:[I

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/mycompany/app/setting/SettingCustom;->P0(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/16 v2, 0xa

    .line 47
    .line 48
    invoke-virtual {v1, v2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 52
    .line 53
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 54
    .line 55
    sget v5, Lnet/kaki87/soul2/testing/R$string;->recent_secret:I

    .line 56
    .line 57
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 58
    .line 59
    const/4 v10, 0x2

    .line 60
    const/16 v4, 0xb

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    move v9, v8

    .line 64
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_2
    return-void
.end method
