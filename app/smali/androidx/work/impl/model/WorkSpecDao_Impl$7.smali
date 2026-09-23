.class Landroidx/work/impl/model/WorkSpecDao_Impl$7;
.super Landroidx/room/SharedSQLiteStatement;
.source "SourceFile"


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    .line 2
    .line 3
    return-object v0
.end method
