#! /bin/sh

# Copyright (C) 2003, 2005 MySQL AB
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA

# 1 - Link top src
# 2 - Link dst

if [ $# -lt 2 ]
then
    exit 0
fi

name=`basename $2`
files=`find $1/$name -type f -name '*.h*'`

for i in $files
do
    ln -s $i $2/`basename $i`
done



