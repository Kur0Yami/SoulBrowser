.class Lcom/mycompany/app/setting/SettingVideo$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingVideo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideo$7;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideo$7;->a:Lcom/mycompany/app/setting/SettingVideo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 9
    .line 10
    if-ne v1, p1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    sput p1, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 16
    .line 17
    const/16 v2, 0xd

    .line 18
    .line 19
    const-string v3, "mSeekSense"

    .line 20
    .line 21
    invoke-static {v1, v2, p1, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-boolean p1, Lcom/mycompany/app/pref/PrefVideo;->s:Z

    .line 25
    .line 26
    xor-int/lit8 v7, p1, 0x1

    .line 27
    .line 28
    iget-object p1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 29
    .line 30
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 31
    .line 32
    sget v3, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 33
    .line 34
    sget v0, Lcom/mycompany/app/pref/PrefVideo;->t:I

    .line 35
    .line 36
    invoke-static {v0}, Lcom/mycompany/app/setting/SettingVideo;->P0(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x2

    .line 42
    const/16 v2, 0x9

    .line 43
    .line 44
    move v8, v7

    .line 45
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIILjava/lang/String;ZZ)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
