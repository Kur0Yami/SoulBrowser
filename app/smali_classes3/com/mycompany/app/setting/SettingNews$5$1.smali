.class Lcom/mycompany/app/setting/SettingNews$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingNews$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingNews$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingNews$5$1;->c:Lcom/mycompany/app/setting/SettingNews$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/mycompany/app/quick/QuickView;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingNews$5$1;->c:Lcom/mycompany/app/setting/SettingNews$5;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingNews$5;->c:Lcom/mycompany/app/setting/SettingNews;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 17
    .line 18
    sget v4, Lnet/kaki87/soul2/testing/R$string;->news_locale:I

    .line 19
    .line 20
    sget-object v3, Lcom/mycompany/app/setting/SettingNews;->n2:[I

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingNews;->R0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x1

    .line 28
    const/4 v3, 0x5

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->D(Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method
