.class Lcom/mycompany/app/dialog/DialogSeekFilter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$3;->a:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/setting/SettingListAdapter$ViewHolder;IZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$3;->a:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    if-eq p2, p3, :cond_0

    .line 7
    .line 8
    sget p1, Lcom/mycompany/app/dialog/DialogSeekFilter;->m0:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput p4, p1, Lcom/mycompany/app/dialog/DialogSeekFilter;->k0:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iput-boolean p3, p1, Lcom/mycompany/app/dialog/DialogSeekFilter;->j0:Z

    .line 15
    .line 16
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekFilter;->h0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogSeekFilter;->B()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method
