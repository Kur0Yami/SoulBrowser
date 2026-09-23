.class Lcom/mycompany/app/setting/SettingSite$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSite$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSite$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSite$5$1;->c:Lcom/mycompany/app/setting/SettingSite$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSite$5$1;->c:Lcom/mycompany/app/setting/SettingSite$5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSite$5;->c:Lcom/mycompany/app/setting/SettingSite;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 20
    .line 21
    add-int/lit8 v2, v2, -0x64

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/web/WebSearch;->b(J)Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v5, v1, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingSite$5;->c:Lcom/mycompany/app/setting/SettingSite;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 37
    .line 38
    sget v4, Lnet/kaki87/soul2/testing/R$string;->search_engine:I

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v3, 0x7

    .line 43
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
