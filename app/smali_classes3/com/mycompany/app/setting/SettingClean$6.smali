.class Lcom/mycompany/app/setting/SettingClean$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$6;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$6;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookFilter;->d(Landroid/content/Context;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, v0, Lcom/mycompany/app/setting/SettingClean;->l2:J

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/mycompany/app/setting/SettingClean;->l2:J

    .line 12
    .line 13
    iput-wide v1, v0, Lcom/mycompany/app/setting/SettingClean;->m2:J

    .line 14
    .line 15
    return-void
.end method
